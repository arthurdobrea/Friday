/**
 * Copyright &copy; Sunit Katkar (sunitkatkar@gmail.com) http://sunitkatkar.blogspot.com
 */
package net.arthur.springsecurityapp.controller;


import net.arthur.springsecurityapp.model.MessageBroadcast;
import net.arthur.springsecurityapp.model.SimpleMessage;
import net.arthur.springsecurityapp.service.ChatService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageExceptionHandler;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.simp.annotation.SendToUser;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

import javax.json.Json;
import javax.json.JsonObject;
import javax.json.JsonReader;
import javax.json.JsonReaderFactory;
import java.io.StringReader;
import java.security.Principal;
import java.util.Collections;

/**
 * {@link WebSocketBroadcastController} is a regular Spring Controller as seen
 * in most Spring MVC applications. Its job is to receive {@link SimpleMessage}
 * message objects from the client, extract the <code>payload</code> (or
 * contents) of the message, prepend it with some simple text and finally
 * broadcast (or publish) the message to all clients who have subscribed to the
 * <code>/topic/simplemessages</code> message queue.
 *
 * @author <a href="mailto:sunitkatkar@gmail.com">Sunit Katkar</a>
 * @version 1.0.0.1
 * @since 1.0
 */

@Controller
public class WebSocketBroadcastController {

    @Autowired
    ChatService chatService;

    private static final Logger LOG = LoggerFactory
            .getLogger(WebSocketBroadcastController.class);

    /**
     * Method to handle the requests sent to this controller at
     * <code>/simplemessages</code> <br/>
     * <br/>
     * <b>Explanation:</b> The <code>@MessageMapping</code> annotation ensures
     * that if a message is sent to destination <code>/simplemessages</code>,
     * then the
     * method is called. <br/>
     * <br/>
     * The message payload is bound to the {@link SimpleMessage} object. For
     * simplicity, this method simulates a 3 second delay before sending back
     * the message as a {@link MessageBroadcast} object. The return value is
     * broadcast to all subscribers to
     * <code>/topic/simplemessagesresponse</code> as specified in the
     * <code>@SendTo</code> annotation. <br/>
     * <br/>
     * <b>Note:</b> The 3 second delay demonstrates that after the server
     * receives a message from the client, the client is free to continue any
     * other processing while the server takes its own time to act on the
     * received message.
     *
     * @param message
//     * @param locale
     * @return
     * @throws Exception
     */
    @MessageMapping("/simplemessages")
    public void processMessageFromClient(SimpleMessage message, Principal principal) throws Exception {
        MessageBroadcast messageToserver = new MessageBroadcast();
//        JsonReaderFactory factory = Json
//                .createReaderFactory(Collections.emptyMap());
//        JsonReader reader = factory.createReader(new StringReader(message.getMessage()));
//
//        JsonObject json = reader.readObject();
//        messageToserver.setMessageContent(json.getString("message"));
//        String destination = json.getString("destination");
        final int position = message.getMessage().lastIndexOf("/") + 1;
        final int nameOfIndex = message.getMessage().indexOf("/");
        String destination = message.getMessage().substring(position);
        System.out.println(destination);

        chatService.sendMessagesToParticularChat("/event/simplemessagesresponse", messageToserver);



    }

    /**
     * If there are any exceptions thrown by any of the messaging infrastructure
     * then they can be sent to the end user on the <code>/queue/errors</code>
     * destination.
     *
     * @param exception
     * @return
     */
    @MessageExceptionHandler
    @SendToUser("/queue/errors")
    public String handleException(Throwable exception) {
        return exception.getMessage();
    }

    @GetMapping("/chat")
    public String webSocketPage() {
        return "basicWebsockets";
    }
}