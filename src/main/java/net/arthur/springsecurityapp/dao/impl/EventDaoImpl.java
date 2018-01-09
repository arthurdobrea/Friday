package net.arthur.springsecurityapp.dao.impl;


import net.arthur.springsecurityapp.dao.EventDao;
import net.arthur.springsecurityapp.model.Event;
import net.arthur.springsecurityapp.model.EventType;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Repository
public class EventDaoImpl implements EventDao {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public Event saveEvent(Event event) {
        entityManager.persist(event);
        return event;
    }

    @Override
    public Event updateEvent(Event event) {
        return entityManager.merge(event);
    }

    @Override
    public Event getEventByTitle(String title) {
        return entityManager.createQuery("SELECT e FROM Event e WHERE e.title = :title", Event.class)
                .setParameter("title", title)
                .getResultList()
                .stream().findFirst().orElse(null);
    }

    @Override
    public void deleteEvent(Event event) {
        entityManager.remove(event);
    }

    @Override
    public void deleteAll() {

        entityManager.createQuery("DELETE FROM Event").executeUpdate();
    }

    @Override
    public Event getEvent(int eventId) {
        return entityManager.createQuery("SELECT DISTINCT e " +
                "FROM Event e " +
                "LEFT JOIN FETCH e.author " +
                "LEFT JOIN FETCH e.participants " +
                "WHERE e.id = :idOfEvent", Event.class)
                .setParameter("idOfEvent", eventId)
                .getResultList().stream()
                .findFirst()
                .orElse(null);
    }

    @Override
    public List<Event> getEventsByType(EventType type) {
        return entityManager
                .createQuery("select  e from Event e where e.eventType = :type", Event.class)
                .setParameter("type", type)
                .getResultList();
    }

    @Override
    public List<Event> getAllEvents() {
        return entityManager
                .createQuery("SELECT DISTINCT e FROM Event e", Event.class)
                .getResultList();

    }

    public List<Event> getEventByKeyWord(String keyword) {
        return entityManager.createQuery("SELECT DISTINCT e FROM Event e " +
                        "WHERE (e.title) LIKE :keyword " +
                        "OR (e.description) LIKE :keyword " +
                        "OR (e.location) LIKE :keyword " +
                        "OR (e.eventType) LIKE :keyword"
                , Event.class)
                .setParameter("keyword", "%" + keyword + "%")
                .getResultList();
    }

}