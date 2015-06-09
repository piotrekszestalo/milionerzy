package org.jboss.as.quickstarts.kitchensink.response;


import org.jboss.as.quickstarts.kitchensink.model.Question;
import org.jboss.as.quickstarts.kitchensink.model.User;

public class QResponse {

    private User user;

    public QResponse(User user, Question question) {
        this.user = user;
        this.question = question;
    }

    private Question question;

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Question getQuestion() {
        return question;
    }

    public void setQuestion(Question question) {
        this.question = question;
    }
}
