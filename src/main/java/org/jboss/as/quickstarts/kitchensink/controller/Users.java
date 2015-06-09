package org.jboss.as.quickstarts.kitchensink.controller;


import org.jboss.as.quickstarts.kitchensink.model.Bonus;
import org.jboss.as.quickstarts.kitchensink.model.Game;
import org.jboss.as.quickstarts.kitchensink.model.Question;
import org.jboss.as.quickstarts.kitchensink.model.User;

import javax.ejb.Stateful;
import javax.enterprise.inject.Model;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.core.Response;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.List;
import java.util.Set;

@Stateful
@Model
public class Users  {

    @Inject
    private EntityManager em;


    public Response userList() {
        Query query = em.createQuery("select u from User u");
        List<User> users = query.getResultList();
        return Response.status(200).entity( users ).build();
    }


    public Response login(User user,HttpServletRequest request) {
        Game game = null;
        if (request.getSession().getAttribute("game") != null) {
            System.out.println("Already login in");
            game = (Game) request.getSession().getAttribute("game");
            return Response.status(200).entity(game.getUser()).build();
        }

        em.persist(user);
        user = em.merge(user);
        game = new Game(user);

        request.getSession().setAttribute("game",game);
        System.out.println("new game & session for user: " + user.getName());
        return Response.status(200).entity(game.getUser()).build();
    }

    public Response logout(HttpServletRequest request) {
        request.getSession().invalidate();
        return Response.status(200).entity(true).build();
    }


    public Response reLogin(HttpServletRequest request) {
        Game game = (Game) request.getSession().getAttribute("game");
        if(game!= null) {
            return Response.status(200).entity(game.getUser()).build();
        }
        return Response.status(400).entity(false).build();
    }


    public Response bonuses(HttpServletRequest request) {
        Game game = (Game) request.getSession().getAttribute("game");
        if(game!= null) {
            List<Bonus> bonuses = new LinkedList<Bonus>();
            if(!game.isUsed5050()) bonuses.add( new Bonus("50/50","help5050") );
            if(!game.isUsedPhoneCall()) bonuses.add( new Bonus("Telefon do przyjaciela"  ,"helpcall") );
            if(!game.isUsedAudience()) bonuses.add( new Bonus("Opinia widowni","helpaudience") );
            return Response.status(200).entity( bonuses ).build();
        }
        return Response.status(400).entity(false).build();

    }
}
