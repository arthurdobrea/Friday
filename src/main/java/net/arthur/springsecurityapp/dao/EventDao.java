package net.arthur.springsecurityapp.dao;



import net.arthur.springsecurityapp.model.Event;
import net.arthur.springsecurityapp.model.EventType;
import net.arthur.springsecurityapp.model.User;

import java.util.List;

public interface EventDao {

    void saveEvent(Event event);

    void updateEvent(Event event);

    void deleteEvent(Event event);

    Event getEvent(int eventId);

    List<Event> getEventsByUser(long userId);

    List<Event> getEventsByAuthor(Long authorId);

    List<Event> getEventsByLocation(String location);

    List<Event> getEventsByType(EventType type);

    List<Event> getEventsByKeyword(String keyword);

    List<Event> getEventsByDate(String localDate);

    List<Event> getEventsByPeriod(String firstDate, String secondDate);

    List<Event> getEventCountByPeriod(String date1, String date2);

    List<Event> getAllEvents();

    List<User> getParticipantsByEvent(int eventId);

    List<EventType> getAllEventTypes();
}