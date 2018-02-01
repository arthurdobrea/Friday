package net.arthur.springsecurityapp.dao.impl;

import net.arthur.springsecurityapp.config.ApplicationTestConfig;
import net.arthur.springsecurityapp.dao.EventDao;
import net.arthur.springsecurityapp.model.Event;
import net.arthur.springsecurityapp.model.User;
import org.hibernate.annotations.Target;
import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.jdbc.core.JdbcTemplate;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.test.jdbc.JdbcTestUtils;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

import static org.assertj.core.api.Assertions.assertThat;

@Transactional
@RunWith(SpringRunner.class)
@ContextConfiguration(classes = {ApplicationTestConfig.class})
public class EventDaoImplTest {

    private static final String TITLE1 = "Endava retro party 50 lei";
    private static final String TITLE2 = "Endava retro party 150 lei";
    private static final String PASSWORD = "SD#@DWSD@WR#$";
    private static final String WHAT_DOES_THE_FOX_SAY = "What does the fox say";

    private User user;

    private Event event1;

    private Event event2;

    @Autowired
    private EventDao eventDao;

    @PersistenceContext
    private EntityManager entityManager;

    @Before
    public void setUp() {
        eventDao.deleteAll();
        entityManager.flush();

        user = new User("ArthurAD");
        user.setPassword(PASSWORD);
        entityManager.persist(user);
        entityManager.flush();
        event1 = new Event(TITLE1);
        event1.setAuthor(user);
    }

    @Test
    public void shouldSaveEvent() {
        eventDao.saveEvent(event1);
        entityManager.flush();

        final Event actualResult = eventDao.getEventByTitle(TITLE1);

        assertThat(actualResult).isEqualTo(event1);

    }

    @Test
    public void shouldReturnEvent(){
        event2 = eventDao.saveEvent(event1);
        entityManager.flush();

        Event actualResult= eventDao.getEvent(event1.getId());

        assertThat(actualResult).isEqualTo(event2);
    }

    @Test
    public void shouldUpdateEvent() {
        eventDao.saveEvent(event1);
        entityManager.flush();
        final Event eventFromDb = eventDao.getEventByTitle(TITLE1);

        eventFromDb.setTitle(WHAT_DOES_THE_FOX_SAY);
        final Event actualResult = eventDao.updateEvent(eventFromDb);
        entityManager.flush();

        assertThat(actualResult).isEqualTo(eventDao.getEventByTitle(WHAT_DOES_THE_FOX_SAY));
    }

    @Test
    public void shouldDeleteEvent() {
        eventDao.saveEvent(event1);
        entityManager.flush();

        eventDao.deleteEvent(event1);
        entityManager.flush();

        assertThat(eventDao.getEventByTitle(TITLE1)).isNull();
    }

    @Test
    public void shouldDeleteAll(){
        eventDao.saveEvent(event1);

        eventDao.deleteAll();
        entityManager.flush();

        assertThat(eventDao.getAllEvents()).isEmpty();


    }

    @Test
    public void shouldGetAllEvents() {
        final Event event1 = eventDao.saveEvent(eventDao.saveEvent(this.event1));
        this.event2 = new Event(TITLE2);
        event2.setAuthor(user);
        final Event event2 = eventDao.saveEvent(eventDao.saveEvent(this.event2));
        entityManager.flush();

        final List<Event> allEvents = eventDao.getAllEvents();

        assertThat(allEvents).containsExactlyInAnyOrder(event1, event2);
    }

}
