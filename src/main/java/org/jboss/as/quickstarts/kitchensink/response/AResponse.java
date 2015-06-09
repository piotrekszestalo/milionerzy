package org.jboss.as.quickstarts.kitchensink.response;


public class AResponse {
    public boolean isStatus() {
        return status;
    }

    public AResponse(boolean status) {
        this.status = status;
    }

    private boolean status;
}
