package net.arthur.springsecurityapp.service;

import  net.arthur.springsecurityapp.model.Event;
import  net.arthur.springsecurityapp.model.User;
import net.arthur.springsecurityapp.model.EventType;


import java.io.IOException;
import java.util.List;

public interface EventService {

    void saveEvent(Event event);

    void updateEvent(Event editedEvent);

    void deleteEvent(Event event);

    Event getEvent(int eventId);

    List<Event> getEventsByUser(long userId);

    List<Event> getEventsByAuthor(long authorId);

    List<Event> getEventsByLocation(String location);

    List<Event> getEventsByType(EventType type);

    List<Event> getEventsByKeyword(String keyword);

    List<Event> getEventsByPeriod(String firstDate, String secondDate);

    List<Event> getEventCountByPeriod(String date1, String date2);

    List<Event> getEventsByDate(String date);

    String getEventJson(Event event) throws IOException;

    String getEventsJson(List<Event> events) throws IOException;

    List<Event> getFutureEventsByType(EventType eventType);

    EventType getEventTypeByString(String eventType);

    List<EventType> getEventTypeList();

    List<User> getParticipantsByEvent(int eventId);

    List<Event> getAllEvents();

    //void setParticipantsTagsAndAuthor(EventResource eventResource, Event event);

    List<Event> searchEvents(EventType type, Long authorId, Long participantId);


}
