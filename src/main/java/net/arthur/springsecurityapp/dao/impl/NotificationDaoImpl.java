package net.arthur.springsecurityapp.dao.impl;


import net.arthur.springsecurityapp.dao.NotificationDao;
import net.arthur.springsecurityapp.model.Event;
import net.arthur.springsecurityapp.model.Notification;
import net.arthur.springsecurityapp.model.User;
import org.springframework.stereotype.Repository;

import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;
import java.util.List;

@Repository
public class NotificationDaoImpl implements NotificationDao {

    @PersistenceContext
    private EntityManager entityManager;

    @Override
    public void save(Notification notification) {
        entityManager.persist(notification);
    }

    @Override
    public void saveAll(List<Notification> notifications) {
        notifications.forEach(entityManager::persist);
    }

    @Override
    public Notification getNotification(User user, Event event) {
        return entityManager.createQuery("select n from Notification n left join fetch n.user left join fetch n.event where n.user.id = :idOfUser "
                + "and n.event.id = :idOfEvent ", Notification.class)
                .setParameter("idOfUser", user.getId())
                .setParameter("idOfEvent", event.getId())
                .getSingleResult();
    }

    @Override
    public List<Notification> getCheckedEvents(User user) {
        List<Notification> notificationList = entityManager.createQuery("select n from Notification n left join fetch n.user left join fetch n.event where n.user.id = :idOfUser "
                + "and n.isViewed = true", Notification.class)
                .setParameter("idOfUser", user.getId())
                .getResultList();

        notificationList.sort((o1, o2) -> o2.getEvent().getStart().compareTo(o1.getEvent().getStart()));

        return notificationList;
    }

    @Override
    public List<Notification> getUncheckedEvents(User user) {
        List<Notification> notificationList = entityManager.createQuery("select n from Notification n left join fetch n.user left join fetch n.event where n.user.id = :idOfUser "
                + "and n.isViewed = false", Notification.class)
                .setParameter("idOfUser", user.getId())
                .getResultList();

        notificationList.sort((o1, o2) -> o2.getEvent().getStart().compareTo(o1.getEvent().getStart()));

        return notificationList;
    }

    @Override
    public void changeState(Notification notification) {
        notification.setViewed(true);

        entityManager.merge(notification);
    }
}