package net.arthur.springsecurityapp.util;

public class Pages {

    public static final String REGISTRATION = "registration";
    public static final String LOGIN = "login";
    public static final String INDEX = "index";
    public static final String EVENT = "event";
    public static final String CREATE_EVENT = "createEvent";
    public static final String CALENDAR = "calendar";
    public static final String USER = "userPage";
    public static final String USERSETTINGS = "userSettings";

    public static String redirectFrom(final String page) {
        return String.format("redirect:/%s/", page);
    }

    private Pages() {

    }
}
