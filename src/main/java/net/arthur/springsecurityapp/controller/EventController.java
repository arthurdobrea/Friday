package net.arthur.springsecurityapp.controller;

import net.arthur.springsecurityapp.model.Event;
import net.arthur.springsecurityapp.model.EventType;
import net.arthur.springsecurityapp.model.User;
import net.arthur.springsecurityapp.model.dto.EventDto;
import net.arthur.springsecurityapp.service.EventService;
import net.arthur.springsecurityapp.service.NotificationService;
import net.arthur.springsecurityapp.service.UserService;
import net.arthur.springsecurityapp.util.Pages;
import net.arthur.springsecurityapp.util.URLs;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.messaging.handler.annotation.MessageMapping;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import javax.validation.Valid;
import java.time.Month;
import java.util.ArrayList;
import java.util.List;

import static net.arthur.springsecurityapp.util.Pages.redirectFrom;

@Controller
@RequestMapping(URLs.EVENT)
public class EventController {

    private static final String ALL_EVENTS_ATTR = "allEvents";

    private static final String EVENT_DTO_ATTR = "eventDto";

    private static final String EVENT_TYPES_ATTR = "eventTypes";

    private static final EventType[] EVENT_TYPES = EventType.values();


    private final EventService eventService;

    private final UserService userService;

    private final NotificationService notificationService;


    @Autowired
    public EventController(EventService eventService, UserService userService,NotificationService notificationService) {
        this.eventService = eventService;
        this.userService = userService;
        this.notificationService = notificationService;
    }


    @GetMapping("/{id}")
    public String event(Model model, @PathVariable int id) {
        final Event event = eventService.getEvent(id);
        String string = event.getStart().toString();
        String stringMonth = string.substring(5, 7);
        Integer monthInt = Integer.parseInt(stringMonth);
        Month month = Month.of(monthInt);

        model.addAttribute("event", event);
        model.addAttribute("month", month);
        model.addAttribute("socket",event.getId());

        return Pages.EVENT;
    }

    @PostMapping(URLs.SEARCH)
    public String showEvents(Model model, @ModelAttribute("keyword") String keyword) {
        model.addAttribute(ALL_EVENTS_ATTR, eventService.getEventByKeyWord(keyword));
        return Pages.INDEX;
    }

    @GetMapping(URLs.CALENDAR)
    public String calendar(){
        return Pages.CALENDAR;
    }

    @PostMapping(URLs.CALENDAR)
    public String calendar(@RequestParam String wtf){
        System.out.println(wtf);
        return Pages.CALENDAR;
    }

    @GetMapping(URLs.CREATE)
    public String createEvent(Model model) {
        model.addAttribute(EVENT_DTO_ATTR, new EventDto());
        model.addAttribute(EVENT_TYPES_ATTR, EVENT_TYPES);
        return Pages.CREATE_EVENT;
    }

    @PostMapping(URLs.CREATE)
    public String createEvent(@ModelAttribute(EVENT_DTO_ATTR) @Valid final EventDto eventDto,
                              final BindingResult bindingResult,
                              final Model model) {
//        if (bindingResult.hasErrors()) {
//            model.addAttribute(EVENT_DTO_ATTR, eventDto);
//            model.addAttribute(EVENT_TYPES_ATTR, EVENT_TYPES);
//            return Pages.CREATE_EVENT;
//        }

        List<String> users = new ArrayList<>();
        users.add("ArthurAD");
        users.add("ArthurAD2");
        final Event event = eventDto.toEvent();
        event.setAuthor(userService.findLoggedInUser());
        eventService.saveEvent(event);
        notificationService.sendToAllParticipants(users,event);

        return redirectFrom(Pages.EVENT) + event.getId();
    }

    @GetMapping(URLs.FILTER)
    public String filterEvents(final Model model, @RequestParam String tag) {
        model.addAttribute(ALL_EVENTS_ATTR, eventService.getEventsByType(EventType.valueOf(tag.toUpperCase())));
        return Pages.INDEX;
    }

    @GetMapping(URLs.INDEX)
    public String index(Model model) {
        model.addAttribute(ALL_EVENTS_ATTR, eventService.getAllEvents());
        return Pages.INDEX;
    }

}
