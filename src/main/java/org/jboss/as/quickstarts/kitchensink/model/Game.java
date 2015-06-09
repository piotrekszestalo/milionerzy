package org.jboss.as.quickstarts.kitchensink.model;


import java.util.LinkedList;
import java.util.List;


public class Game {
    public boolean isUsed5050() {
        return isUsed5050;
    }

    public boolean isUsedPhoneCall() {
        return isUsedPhoneCall;
    }

    public boolean isUsedAudience() {
        return isUsedAudience;
    }

    public void setIsUsed5050(boolean isUsed5050) {
        this.isUsed5050 = isUsed5050;
    }

    public void setIsUsedPhoneCall(boolean isUsedPhoneCall) {
        this.isUsedPhoneCall = isUsedPhoneCall;
    }

    public void setIsUsedAudience(boolean isUsedAudience) {
        this.isUsedAudience = isUsedAudience;
    }

    private boolean isUsed5050 = false;
    private boolean isUsedPhoneCall = false;
    private boolean isUsedAudience = false;
    private User user;
    private Question currentQuestion;
    private List<Question> answeredQuestions = new LinkedList<Question>();



    public Game(User user) {
        this.user = user;
    }

    public User getUser() {
        return user;
    }


    public void levelUp() {
        if(user.getLevel() == null ) {
            user.setLevel((byte) 1);
        }
        else {
            user.setLevel((byte) (user.getLevel() + 1));
        }
    }

    public Question getCurrentQuestion() {
        return currentQuestion;
    }

    public boolean checkWhetherItWasQuestion( Question q ) {
        if( q == null ) return true;
        for (Question answeredQuestion : answeredQuestions) {
            if(answeredQuestion.getId() == q.getId()) return true;
        }
        return false;
    }

    public void setCurrentQuestion( Question currentQuestion ) {
        this.currentQuestion = currentQuestion;
    }


}
