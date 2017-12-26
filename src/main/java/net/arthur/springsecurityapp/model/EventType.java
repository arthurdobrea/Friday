package net.arthur.springsecurityapp.model;

public enum EventType {
    MASTERCLASS("MASTERCLASS"),
    MOVIE("MOVIE"),
    PARTY("PARTY"),
    OTHER("OTHER"),
    CONCERTS("CONCERTS"),
    EXPOSITION("EXPOSITION"),
    PERFORMANCE("PERFORMANCE"),
    TRAININGS("TRAININGS"),
    RAPBATTLE("RAPBATTLE"),
    BOARDGAMES("BOARDGAMES");

    private final String view;

    EventType(String view) {
        this.view = view;
    }

    public String view() {
        return view;
    }


}
