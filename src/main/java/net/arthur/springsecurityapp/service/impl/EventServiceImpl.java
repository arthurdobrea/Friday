package net.arthur.springsecurityapp.service.impl;

import net.arthur.springsecurityapp.dao.EventDao;
import net.arthur.springsecurityapp.model.Event;
import net.arthur.springsecurityapp.model.EventType;
import net.arthur.springsecurityapp.model.User;
import net.arthur.springsecurityapp.service.EventService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.io.IOException;
import java.util.List;

@Service
public class EventServiceImpl implements EventService {

    @Autowired
    EventDao eventDao;


    @Override
    @Transactional
    public void saveEvent(Event event) {
        eventDao.saveEvent(event);
    }

    @Override
    public void updateEvent(Event editedEvent) {

    }

    @Override
    public void deleteEvent(Event event) {

    }

    @Override
    public Event getEvent(int eventId) {
        return null;
    }

    @Override
    public List<Event> getEventsByUser(long userId) {
        return null;
    }

    @Override
    public List<Event> getEventsByAuthor(long authorId) {
        return null;
    }

    @Override
    public List<Event> getEventsByLocation(String location) {
        return null;
    }

    @Override
    public List<Event> getEventsByType(EventType type) {
        return null;
    }

    @Override
    public List<Event> getEventsByKeyword(String keyword) {
        return null;
    }

    @Override
    public List<Event> getEventsByPeriod(String firstDate, String secondDate) {
        return null;
    }

    @Override
    public List<Event> getEventCountByPeriod(String date1, String date2) {
        return null;
    }

    @Override
    public List<Event> getEventsByDate(String date) {
        return null;
    }

    @Override
    public String getEventJson(Event event) throws IOException {
        return null;
    }

    @Override
    public String getEventsJson(List<Event> events) throws IOException {
        return null;
    }

    @Override
    public List<Event> getFutureEventsByType(EventType eventType) {
        return null;
    }

    @Override
    public EventType getEventTypeByString(String eventType) {
        return null;
    }

    @Override
    public List<EventType> getEventTypeList() {
        return null;
    }

    @Override
    public List<User> getParticipantsByEvent(int eventId) {
        return null;
    }

    @Override
    public List<Event> getAllEvents() {
        return null;
    }

    @Override
    public List<Event> searchEvents(EventType type, Long authorId, Long participantId) {
        return null;
    }
}
