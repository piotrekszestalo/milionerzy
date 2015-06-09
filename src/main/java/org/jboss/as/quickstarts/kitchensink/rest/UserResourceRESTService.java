package org.jboss.as.quickstarts.kitchensink.rest;




import org.jboss.as.quickstarts.kitchensink.controller.Users;
import org.jboss.as.quickstarts.kitchensink.model.User;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.*;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;
import java.util.LinkedList;
import java.util.List;

@Path("/users")
@RequestScoped
public class UserResourceRESTService {


    @Context
    HttpServletRequest request;

    @Inject
    private EntityManager em;

    @Inject
    Users ctrl;

    @GET
    @Path("/bonuses")
    public Response bonuses( ) {
        return ctrl.bonuses(request);
    }

    @GET
    @Path("/")
    public Response userList( ) {
        return ctrl.userList();
    }

    @POST
    @Path("/")
    @Produces("application/json")
    @Consumes("application/json")
    public Response login( User user) {
            return ctrl.login(user, request);
    }


    @PUT
    @Path("/")
    @Produces("application/json")
    public Response reLogin( ) {
        return ctrl.reLogin(request);
    }


    @DELETE
    @Path("/")
    @Produces("application/json")
    public Response logout( ) {
        return ctrl.logout(request);
    }

}

