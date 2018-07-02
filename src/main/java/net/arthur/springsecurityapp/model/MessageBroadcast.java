/**
 * 
 */
package net.arthur.springsecurityapp.model;

import com.fasterxml.jackson.annotation.JsonView;

/**
 * This POJO is for broadcasting (or publishing) the received message (
 * {@link SimpleMessage}) to all clients who are subscribed to the
 * <code>/topic/simplemessages</code> message queue.
 * 
 * Note that Spring uses the <a
 * href="http://wiki.fasterxml.com/JacksonHome">Jackson JSON</a> library for
 * marshalling and unmarshalling the instances of {@link MessageBroadcast
 * } to
 * and from JSON
 * 
 * @author <a href="mailto:sunitkatkar@gmail.com">Sunit Katkar</a>
 * 
 */
public class MessageBroadcast {

    @JsonView(Views.Public.class)
    private String messageContent;

    @JsonView(Views.Public.class)
    private String destination;

    @JsonView(Views.Public.class)
    private String username;


    public MessageBroadcast(String messageContent, String destination, String username) {
        this.messageContent = messageContent;
        this.destination = destination;
        this.username = username;
    }

    /**
     * Default no argument constructor
     */
    public MessageBroadcast() {

    }

    /**
     * Constructor
     * 
     * @param messageContent
     */
    public MessageBroadcast(String messageContent) {
        this.messageContent = messageContent;
    }

    /**
     * @return the messageContent
     */
    public String getMessageContent() {
        return messageContent;
    }

    /**
     * @param messageContent
     *            the messageContent to set
     */
    public void setMessageContent(String messageContent) {
        this.messageContent = messageContent;
    }

    public String getDestination() {
        return destination;
    }

    public void setDestination(String destination) {
        this.destination = destination;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }
}
