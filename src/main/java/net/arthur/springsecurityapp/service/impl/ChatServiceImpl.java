package net.arthur.springsecurityapp.service.impl;

import net.arthur.springsecurityapp.model.MessageBroadcast;
import net.arthur.springsecurityapp.service.ChatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.simp.SimpMessagingTemplate;
import org.springframework.stereotype.Service;

@Service
public class ChatServiceImpl implements ChatService {

    @Autowired
    private SimpMessagingTemplate template;

    @Override
    public void sendMessagesToParticularChat(String destination, MessageBroadcast message) {
        template.convertAndSend(destination,message);
    }
}
