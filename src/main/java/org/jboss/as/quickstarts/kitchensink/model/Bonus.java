package org.jboss.as.quickstarts.kitchensink.model;


public class Bonus {
    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getUrl() {
        return url;
    }

    public void setUrl(String url) {
        this.url = url;
    }

    String name;
    String url;

    public Bonus(String name, String url) {
        this.name = name;
        this.url = url;
    }
}
