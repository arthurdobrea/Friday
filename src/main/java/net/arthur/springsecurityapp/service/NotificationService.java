package net.arthur.springsecurityapp.service;

import net.arthur.springsecurityapp.model.Event;
import net.arthur.springsecurityapp.model.User;

import java.util.List;

public interface NotificationService {

    void sendToAllParticipants(List<User> users, Event eventForm);

}
