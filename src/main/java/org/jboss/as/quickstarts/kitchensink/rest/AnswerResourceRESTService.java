package org.jboss.as.quickstarts.kitchensink.rest;



import org.jboss.as.quickstarts.kitchensink.controller.Answers;
import org.jboss.as.quickstarts.kitchensink.model.Help;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.NoResultException;
import javax.persistence.Query;
import javax.persistence.EntityManager;
import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.*;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;

@Path("/answers")
@RequestScoped
public class AnswerResourceRESTService {

    @Context
    HttpServletRequest request;

    @Inject
    Answers ctrl;

    @Inject
    private EntityManager em;


    @POST
    @Path("/{id:[0-9][0-9]*}")
    @Produces("application/json")
    public Response checkAnser(@PathParam("id") long id) {
        return ctrl.checkAnser(id,request);

    }





}

