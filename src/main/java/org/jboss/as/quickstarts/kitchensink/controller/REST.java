package org.jboss.as.quickstarts.kitchensink.controller;


import com.fasterxml.jackson.databind.ObjectMapper;



public abstract class REST {


    private ObjectMapper mapper = new ObjectMapper();
    protected String filerJSON(Object o) {
        ObjectMapper mapper = new ObjectMapper();
        try {
            String json =  mapper.writeValueAsString( o );
            return json;
        } catch ( Exception ex ) {
            return "";
        }
    }



}
