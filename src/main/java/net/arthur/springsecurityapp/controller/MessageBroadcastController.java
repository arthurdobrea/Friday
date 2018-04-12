package net.arthur.springsecurityapp.controller;

import net.arthur.springsecurityapp.model.dto.ChatMessage;
import net.arthur.springsecurityapp.model.dto.OutputMessage;
import net.arthur.springsecurityapp.util.CommonUtils;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.messaging.handler.annotation.SendTo;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;


/**
 * Implements web socket and sock js based one-to-multiple user
 * message broadcasting controller methods.
 *
 * @author Yasitha Thilakaratne
 */
@Controller
public class MessageBroadcastController {

    @RequestMapping("/")
    public String home() {
        return "home";
    }


    @RequestMapping("/chatbot")
    public String getChatBot() {
        return "sockJsGrpChat";
    }

    @RequestMapping("/web-sock")
    public String getWebSocket() {
        return "webSocketChat";
    }

    @MessageMapping("/grp-chat")
    @SendTo("/topic/messages")
    public OutputMessage send(ChatMessage chatMessage) throws Exception {
        String time = CommonUtils.getCurrentTimeStamp();
        return new OutputMessage(chatMessage.getFrom(), chatMessage.getText(), time, false);
    }

    @RequestMapping("test")
    @ResponseBody
    public String testResponse() {
        return "CHAT APP IS RUNNING...";
    }
}
