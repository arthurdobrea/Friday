package net.arthur.springsecurityapp.model;

import com.fasterxml.jackson.annotation.JsonView;

public class AjaxResponseBody {
    @JsonView(Views.Public.class)
    String msg;

    public String getMsg() {
        return msg;
    }

    public void setMsg(String msg) {
        this.msg = msg;
    }
}
