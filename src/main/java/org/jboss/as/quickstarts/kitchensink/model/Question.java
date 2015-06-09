package org.jboss.as.quickstarts.kitchensink.model;



import javax.persistence.*;
import java.util.Set;


@Entity
@Table(name="questions")
public class Question {

    private Long id;

    @GeneratedValue
    @Id
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }


    private String name;

    @Basic
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }




    private Set<Answer> answers;


    @OneToMany(fetch = FetchType.EAGER, cascade=CascadeType.ALL, mappedBy = "question", targetEntity = Answer.class)
    public Set<Answer> getAnswers() {
        return answers;
    }


    public void setAnswers(Set<Answer> answers) {
        this.answers = answers;
    }
}
