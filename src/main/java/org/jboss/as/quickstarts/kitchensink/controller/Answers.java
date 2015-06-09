package org.jboss.as.quickstarts.kitchensink.controller;


import org.jboss.as.quickstarts.kitchensink.model.*;
import org.jboss.as.quickstarts.kitchensink.response.AResponse;

import javax.ejb.Stateful;
import javax.enterprise.inject.Model;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.core.Response;

@Stateful
@Model
public class Answers extends REST {

    @Inject
    private EntityManager em;

    public Response checkAnser(long id, HttpServletRequest request) {
        Game game = null;
        if( request.getSession().getAttribute("game") == null ) {
            return Response.status(400).entity("Login in to play").build();
        }
        game = (Game) request.getSession().getAttribute("game");

        if(  game.getCurrentQuestion() == null ) {
            return  Response.status(400).entity("You haven't got active question, choose one...").build();
        }

        Query query = em.createQuery("select a from Answer a where id=:id");
        query.setParameter("id", id);
        try {
            Answer a = (Answer) query.getSingleResult();

            Question q_answer = a.getQuestion();
            Question q_current = game.getCurrentQuestion();
            if( q_answer.getId() != q_current.getId() ) {
                return  Response.status(400).entity("Anwser not for the current question !").build();
            }

            if( a.isCorrect() ) {
                game.levelUp();
                em.merge(game.getUser());
                game.setCurrentQuestion(null);
                request.getSession().setAttribute("game",game);
                return Response.status(200).entity(new AResponse(true)).build();
            }
            else {
                System.out.println("Bad answer id "+a.getId());
                User user = game.getUser();
                user.setTime(request.getSession().getLastAccessedTime() - request.getSession().getCreationTime());
                em.merge( game.getUser() );
                request.getSession().invalidate();
                return Response.status(200).entity( new AResponse(false) ).build();
            }

        } catch (NoResultException ex) {
            return Response.status(404).entity("Bad answer id").build();
        }
    }




}
