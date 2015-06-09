package org.jboss.as.quickstarts.kitchensink.model;

import com.google.gson.annotations.Expose;

import javax.persistence.*;


@Entity
@Table(name="users")
public class User {
    @Expose
    private Long id;

    @GeneratedValue
    @Id
    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    @Expose
    private String name;

    @Basic
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    @Expose
    private Long time;

    @Basic
    public Long getTime() {
        return time;
    }

    public void setTime(Long time) {
        this.time = time;
    }

    @Expose
    private Byte level;

    @Basic
    public Byte getLevel() {
        return level;
    }

    public void setLevel(Byte level) {
        this.level = level;
    }
}
