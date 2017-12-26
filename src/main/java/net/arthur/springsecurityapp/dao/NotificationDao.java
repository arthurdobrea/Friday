package net.arthur.springsecurityapp.dao;



import net.arthur.springsecurityapp.model.Event;
import net.arthur.springsecurityapp.model.Notification;
import net.arthur.springsecurityapp.model.User;

import java.util.List;

public interface NotificationDao {

    void save(Notification notification);

    void saveAll(List<Notification> notifications);

    Notification getNotification(User user, Event event);

    List<Notification> getCheckedEvents(User user);

    List<Notification> getUncheckedEvents(User user);

    void changeState(Notification Notification);

}