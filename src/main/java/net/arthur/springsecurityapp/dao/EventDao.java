package net.arthur.springsecurityapp.dao;


import net.arthur.springsecurityapp.model.Event;
import net.arthur.springsecurityapp.model.EventType;

import java.util.List;

public interface EventDao {

    Event saveEvent(Event event);

    Event updateEvent(Event event);

    Event getEventByTitle(String title);

    void deleteEvent(Event event);

    void deleteAll();

    Event getEvent(int eventId);

    List<Event> getEventsByType(EventType type);

    List<Event> getAllEvents();

    List<Event> getEventByKeyWord(String keyword);
}