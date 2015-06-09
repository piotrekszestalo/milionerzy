package org.jboss.as.quickstarts.kitchensink.model;


import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonProperty;
import com.google.gson.annotations.Expose;

import javax.persistence.*;
import javax.xml.bind.annotation.XmlRootElement;


@Entity
@Table(name="answers")
public class Answer {

    @JsonIgnore
    private Question question;

    @JsonIgnore
    @ManyToOne
    @JoinColumn(name = "question_id")
    public Question getQuestion() {
        return question;
    }

    @JsonProperty
    public void setQuestion(Question question) {
        this.question = question;
    }

    private String name;

    @Basic
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Transient
    @JsonIgnore
    public boolean isWasShown() {
        return wasShown;
    }

    @JsonProperty
    public void setWasShown(boolean wasShown) {
        this.wasShown = wasShown;
    }

    @JsonIgnore
    private boolean  wasShown = false;




    private boolean correct;

    @Basic
    public boolean isCorrect() {
        return correct;
    }

    public void setCorrect(boolean correct) {
        this.correct = correct;
    }

    private Long id;

    @GeneratedValue(strategy=GenerationType.IDENTITY)
    @Id
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    private char position;

    @Basic
    public char getPosition() {
        return position;
    }

    public void setPosition(char position) {
        this.position = position;
    }
}
