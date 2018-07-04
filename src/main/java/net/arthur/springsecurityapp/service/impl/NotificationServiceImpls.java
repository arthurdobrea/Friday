package net.arthur.springsecurityapp.service.impl;

import net.arthur.springsecurityapp.model.Event;
import net.arthur.springsecurityapp.model.MessageBroadcast;
import net.arthur.springsecurityapp.model.User;
import net.arthur.springsecurityapp.model.dto.EventDto;
import net.arthur.springsecurityapp.service.NotificationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Service;

import java.time.format.DateTimeFormatter;
import java.util.List;


@Service
public class NotificationServiceImpls implements NotificationService {

    @Autowired
    private SimpMessagingTemplate template;


    @Override
    public void sendToAllParticipants(List<User> users, Event eventForm) {
        eventForm.getAuthor().setRoles(null);
        eventForm.getAuthor().setEventsOfAuthor(null);
        for (User it : users) {
            template.convertAndSendToUser(it.getUsername(), "/queue/reply",
                    eventForm.toString());
        }
    }
}
