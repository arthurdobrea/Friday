package net.arthur.springsecurityapp.service;

import net.arthur.springsecurityapp.model.Event;

import java.util.List;

public interface NotificationService {

    void sendToAllParticipants(List<String> users, Event eventForm);

}
