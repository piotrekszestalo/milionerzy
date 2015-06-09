package org.jboss.as.quickstarts.kitchensink.controller;


import org.jboss.as.quickstarts.kitchensink.model.*;
import org.jboss.as.quickstarts.kitchensink.response.QResponse;

import javax.ejb.Stateful;
import javax.enterprise.inject.Model;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.core.Response;
import java.util.HashSet;
import java.util.Random;
import java.util.Set;

@Stateful
@Model
public class Questions extends  REST {

    @Inject
    private EntityManager em;


    public Response getRandomQuestionWithAnswer(HttpServletRequest request) {

        if( request.getSession().getAttribute("game") == null ) {
            return Response.status(400).entity("Login in to play").build();
        }
        Game game = (Game) request.getSession().getAttribute("game");

        if( game.getCurrentQuestion() != null ) {
            System.out.println("You haven't answer this question yet");
            return Response.status(200).entity( filerJSON( new QResponse(game.getUser(),game.getCurrentQuestion() ) )  ).build();
        }
        Query query = em.createQuery("select count(q.id) from Question q");
        int numOfQuestopms = 50; // (Long) query.getSingleResult(); //TODO fix this
        System.out.println("Number of questions in db = "+numOfQuestopms);

        Random rand = new Random();
        Question q = null;
        while ( game.checkWhetherItWasQuestion(q) ) {

            long id = rand.nextInt(numOfQuestopms-1)  + 1;
            System.out.println("Random id = "+id);
            query = em.createQuery("select q from Question q where id=:id");
            query.setParameter("id", id );
            try {
                q = (Question) query.getSingleResult();
            } catch (NoResultException ex) {
                continue;
            }
        }


        game.setCurrentQuestion(q);

        if( game.getUser().getLevel() != null &&  game.getUser().getLevel() == 12 ) {
            User user = game.getUser();
            user.setTime(request.getSession().getLastAccessedTime() - request.getSession().getCreationTime());
            em.merge( game.getUser() );
            request.getSession().invalidate();
        }
        else {
            request.getSession().setAttribute("game",game);
        }

        return Response.status(200).entity( filerJSON( new QResponse(game.getUser(),q)) ).build();
    }


    public Response getHelp(HttpServletRequest request, Help help) {
        Game game = null;
        if( request.getSession().getAttribute("game") == null ) {
            return Response.status(400).entity("Login in to play").build();
        }
        game = (Game) request.getSession().getAttribute("game");
        if(game.isUsed5050()) {
            Response.status(400).entity("Cannot use 5050 again").build();
        }

        Set<Answer> answersToShow = new HashSet<Answer>();
        Set<Answer> answers = game.getCurrentQuestion().getAnswers();


        if( help == Help.answerAudience ) {
            if(game.isUsedAudience()) {
                return Response.status(400).entity( "cannot use audience again" ).build();
            }
            game.setIsUsedAudience(true);
        }
        if( help == Help.answerPhoneCall ) {
            if( game.isUsedPhoneCall() ) {
                return Response.status(400).entity( "cannot use  phonecall again" ).build();
            }
            game.setIsUsedPhoneCall(true);
        }
        if( help == Help.answers5050 ) {
            if( game.isUsed5050() ) {
                return Response.status(400).entity( "cannot use  5050 again" ).build();
            }
            game.setIsUsed5050(true);
            for (Answer answer : answers) {
                if(!answer.isCorrect() ) {
                    answersToShow.add(answer);
                    break;
                }
            }
        }
        for (Answer answer : answers) {
            if(answer.isCorrect()) {
                answersToShow.add(answer);
                break;
            }
        }



        request.getSession().setAttribute("game",game);



        return Response.status(200).entity( filerJSON(answersToShow) ).build();
    }


}
