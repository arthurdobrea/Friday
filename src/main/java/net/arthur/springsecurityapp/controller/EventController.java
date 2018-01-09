package net.arthur.springsecurityapp.controller;

import net.arthur.springsecurityapp.model.Event;
import net.arthur.springsecurityapp.model.EventType;
import net.arthur.springsecurityapp.model.dto.EventDto;
import net.arthur.springsecurityapp.service.EventService;
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

    @Autowired
    public EventController(EventService eventService, UserService userService) {
        this.eventService = eventService;
        this.userService = userService;
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
        if (bindingResult.hasErrors()) {
            model.addAttribute(EVENT_DTO_ATTR, eventDto);
            model.addAttribute(EVENT_TYPES_ATTR, EVENT_TYPES);
            return Pages.CREATE_EVENT;
        }

        final Event event = eventDto.toEvent();
        event.setAuthor(userService.findLoggedInUser());
        eventService.saveEvent(event);

        return redirectFrom(Pages.EVENT) + event.getId();
    }

    @GetMapping(URLs.FILTER)
    public String filterEvents(final Model model, @RequestParam String tag) {
        model.addAttribute(ALL_EVENTS_ATTR, eventService.getEventsByType(EventType.valueOf(tag.toUpperCase())));
        return Pages.INDEX;
    }

}
