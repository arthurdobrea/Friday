package net.arthur.springsecurityapp.dao.impl;


import net.arthur.springsecurityapp.dao.EventDao;
import net.arthur.springsecurityapp.model.Event;
import net.arthur.springsecurityapp.model.EventType;
import net.arthur.springsecurityapp.model.User;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.time.format.DateTimeFormatterBuilder;
import java.time.temporal.ChronoField;
import java.util.ArrayList;
import java.util.List;

@Repository
public class EventDaoImpl implements EventDao {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public void saveEvent(Event event) {
        entityManager.persist(event);
    }

    @Override
    public void updateEvent(Event event) {
        entityManager.merge(event);


    }

    @Override
    public void deleteEvent(Event event) {
        entityManager.remove(event);



        entityManager.flush();
        entityManager.clear();
    }

    @Override
    public Event getEvent(int eventId) {


        List<Event> events = entityManager.createQuery("select distinct e from Event e left join e.author left join fetch e.participants left join fetch e.tags where e.id = :idOfEvent", Event.class)
                .setParameter("idOfEvent", eventId)
                .getResultList();

        System.out.println("SELECT = " + events);

        if (events.size() > 0) {
            Event event = events.get(0);


            return event;
        }


        return null;
    }

    @Override
    public List<Event> getEventsByUser(long userId) {


        return entityManager.createQuery("select DISTINCT e FROM Event e " +
                "join e.author left join fetch e.participants p left join fetch e.tags WHERE p.id=:idOfUser", Event.class)
                .setParameter("idOfUser", userId)
                .getResultList();
    }

    @Override
    public List<Event> getEventsByAuthor(Long authorId) {


        return entityManager
                .createQuery("select DISTINCT e from Event e join e.author left join fetch e.participants p left join fetch e.tags where e.author.id = :idOfAuthor", Event.class)
                .setParameter("idOfAuthor", authorId)
                .getResultList();
    }

    @Override
    public List<Event> getEventsByLocation(String location) {


        return entityManager
                .createQuery("select DISTINCT e from Event e join e.author left join fetch e.participants p left join fetch e.tags where e.location = :location", Event.class)
                .setParameter("location", location)
                .getResultList();
    }

    @Override
    public List<Event> getEventsByType(EventType type) {

        return entityManager
                .createQuery("select DISTINCT e from Event e join e.author left join fetch e.participants p left join fetch e.tags where e.eventType = :type", Event.class)
                .setParameter("type", type)
                .getResultList();
    }

    @Override
    public List<Event> getEventsByKeyword(String keyword) {

        return entityManager.createQuery("select DISTINCT e from Event e " +
                "left join fetch e.author a " +
                "left join fetch e.participants p " +
                "left join fetch e.tags t " +
                " where upper(e.title) like :keyword or" +
                " upper(e.description) like :keyword or" +
                " upper(e.location) like :keyword or" +
                " upper(a.username) like :keyword or" +
                " upper(e.eventType) like :keyword or" +
                " upper(t.tag) like :keyword", Event.class)
                .setParameter("keyword", "%" + keyword.toUpperCase() + "%")
                .getResultList();
    }

    @Override
    public List<Event> getEventsByDate(String localDate) {

        return entityManager
                .createQuery("select DISTINCT e FROM Event e left join fetch e.participants join e.author left join fetch e.tags WHERE to_char(e.start,'YYYY-MM-DD')=:dateOfEvent", Event.class)
                .setParameter("dateOfEvent", localDate)
                .getResultList();
    }

    @Override
    public List<Event> getEventsByPeriod(String firstDate, String secondDate) {
        DateTimeFormatter dateTimeFormatter1 = DateTimeFormatter.ofPattern("yyyy-MM-dd");

        DateTimeFormatter dateTimeFormatter = new DateTimeFormatterBuilder().append(dateTimeFormatter1)
                .parseDefaulting(ChronoField.HOUR_OF_DAY, 0)
                .parseDefaulting(ChronoField.MINUTE_OF_HOUR, 0)
                .parseDefaulting(ChronoField.SECOND_OF_MINUTE, 0)
                .toFormatter();

        LocalDateTime first = LocalDateTime.parse(firstDate, dateTimeFormatter);
        LocalDateTime second = LocalDateTime.parse(secondDate, dateTimeFormatter);



        return entityManager
                .createQuery("select distinct e FROM Event e left join fetch e.participants join e.author left join fetch e.tags WHERE e.start >= :firstDate and e.start <= :secondDate", Event.class)
                .setParameter("firstDate", first)
                .setParameter("secondDate", second)
                .getResultList();
    }

    @Override
    public List<Event> getEventCountByPeriod(String date1, String date2) {
        DateTimeFormatter dateTimeFormatter1 = DateTimeFormatter.ofPattern("yyyy-MM-dd");

        DateTimeFormatter dateTimeFormatter = new DateTimeFormatterBuilder().append(dateTimeFormatter1)
                .parseDefaulting(ChronoField.HOUR_OF_DAY, 0)
                .parseDefaulting(ChronoField.MINUTE_OF_HOUR, 0)
                .parseDefaulting(ChronoField.SECOND_OF_MINUTE, 0)
                .toFormatter();

        LocalDateTime first = LocalDateTime.parse(date1, dateTimeFormatter);
        LocalDateTime second = LocalDateTime.parse(date2, dateTimeFormatter);

        return entityManager
                .createQuery("select to_char(e.start,'yyyy-MM-dd') AS date, count(e.start) AS number FROM Event e WHERE e.start >= :firstDate and e.start <= :secondDate GROUP BY 1", Event.class)
                .setParameter("firstDate", first)
                .setParameter("secondDate", second)
                .getResultList();
    }

    @Override
    public List<Event> getAllEvents() {


        return entityManager
                .createQuery("select distinct e from Event e left join fetch e.participants join fetch e.author left join fetch e.tags order by e.start", Event.class)
                .getResultList();

    }

    @Override
    public List<User> getParticipantsByEvent(int eventId) {


        return entityManager.createQuery("select DISTINCT u FROM User u " +
                "left JOIN fetch u.events e WHERE e.id=:idOfEvent", User.class)
                .setParameter("idOfEvent", eventId)
                .getResultList();
    }

    @Override
    public List<EventType> getAllEventTypes() {

        return new ArrayList<EventType>();
    }

}