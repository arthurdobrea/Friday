package net.arthur.springsecurityapp.model;

public enum EventType {
    MASTER("MASTER"),
    MOVIE("MOVIE"),
    PARTY("PARTY"),
    OTHER("OTHER"),
    MUSIC("MUSIC"),
    SHOW("SHOW"),
    THEATER("THEATER"),
    TRAINING("TRAINING"),
    RAP("RAP"),
    BOARDGAMES("BOARDGAMES");

    private String view;

    EventType(String view) {
        this.view = view;
    }

    public String view() {
        return view;
    }

}
