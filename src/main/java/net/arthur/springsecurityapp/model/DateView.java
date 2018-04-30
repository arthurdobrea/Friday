package net.arthur.springsecurityapp.model;

public class DateView {
    String Date;

    public String getDate() {
        return Date;
    }

    public void setDate(String date) {
        Date = date;
    }

    public DateView(String date) {

        Date = date;
    }
}
