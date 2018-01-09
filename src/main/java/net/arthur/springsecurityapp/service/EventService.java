package net.arthur.springsecurityapp.service;

import  net.arthur.springsecurityapp.model.Event;
import  net.arthur.springsecurityapp.model.User;
import net.arthur.springsecurityapp.model.EventType;


import java.io.IOException;
import java.util.List;

public interface EventService {

    Event saveEvent(Event event);

    Event updateEvent(Event editedEvent);

    Event getEvent(int eventId);

    List<Event> getEventsByType(EventType type);

    List<Event> getAllEvents();

    List<Event> getEventByKeyWord(String keyword);
}
