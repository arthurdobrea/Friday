package net.arthur.springsecurityapp.service.impl;

import net.arthur.springsecurityapp.dao.EventDao;
import net.arthur.springsecurityapp.model.Event;
import net.arthur.springsecurityapp.model.EventType;
import net.arthur.springsecurityapp.service.EventService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.Date;
import java.util.List;

@Service
public class EventServiceImpl implements EventService {

    @Autowired
    EventDao eventDao;

    @Override
    @Transactional
    public Event saveEvent(Event event) {
        return eventDao.saveEvent(event);
    }

    @Override
    public Event updateEvent(Event editedEvent) {
        return eventDao.updateEvent(editedEvent);
    }

    @Override
    public Event getEvent(int eventId) {
        return eventDao.getEvent(eventId);
    }

    @Override
    public List<Event> getEventsByType(EventType type) {

        return eventDao.getEventsByType(type);
    }

    @Override
    public List<Event> getAllEvents() {
        return eventDao.getAllEvents();
    }

    @Override
    public List<Event> getEventByKeyWord(String keyword) {
        return eventDao.getEventByKeyWord(keyword);
    }

    @Override
    public List<Event> getEventsByAuthor(Long id) {
        return eventDao.getEventById(id);
    }

    @Override
    public List<Event> getEventsByDate(Date date) {
        eventDao.getEventByDate(date);
        return null;
    }

}
