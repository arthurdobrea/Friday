package net.arthur.springsecurityapp.service;

import net.arthur.springsecurityapp.model.MessageBroadcast;

public interface ChatService {

    void sendMessagesToParticularChat(String destination, MessageBroadcast message);
}
