package org.jboss.as.quickstarts.kitchensink.rest;



import org.jboss.as.quickstarts.kitchensink.controller.Questions;
import org.jboss.as.quickstarts.kitchensink.model.Help;

import javax.enterprise.context.RequestScoped;
import javax.inject.Inject;
import javax.persistence.EntityManager;
import javax.persistence.NoResultException;
import javax.persistence.Query;
import javax.servlet.http.HttpServletRequest;
import javax.ws.rs.GET;
import javax.ws.rs.Path;
import javax.ws.rs.PathParam;
import javax.ws.rs.Produces;
import javax.ws.rs.core.Context;
import javax.ws.rs.core.Response;
import java.util.List;

@Path("/questions")
@RequestScoped
public class QuestionResourceRESTService {

    @Context
    HttpServletRequest request;

    @Inject
    Questions ctrl;

    @Inject
    private EntityManager em;


    @GET
    @Path("/")
    @Produces("application/json")
    public Response getQuestionWithAnswer() {
        return ctrl.getRandomQuestionWithAnswer(request);
    }


    @GET
    @Path("/help5050")
    @Produces("application/json")
    public Response help5050() {
        return ctrl.getHelp(request, Help.answers5050);
    }

    @GET
    @Path("/helpcall")
    @Produces("application/json")
    public Response helpcall() {
        return ctrl.getHelp(request, Help.answerPhoneCall);
    }

    @GET
    @Path("/helpaudience")
    @Produces("application/json")
    public Response helpaudience() {
        return ctrl.getHelp(request, Help.answerAudience);
    }




}

