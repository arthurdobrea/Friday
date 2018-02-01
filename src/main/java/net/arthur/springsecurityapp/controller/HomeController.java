package net.arthur.springsecurityapp.controller;

import net.arthur.springsecurityapp.service.EventService;
import net.arthur.springsecurityapp.util.Pages;
import net.arthur.springsecurityapp.util.URLs;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class HomeController {

    private static final String ALL_EVENTS_ATTR = "allEvents";

    private final EventService eventService;

    @Autowired
    public HomeController(EventService eventService) {
        this.eventService = eventService;
    }

    @GetMapping(URLs.INDEX)
    public String index(Model model) {
        model.addAttribute(ALL_EVENTS_ATTR, eventService.getAllEvents());
        return Pages.INDEX;
    }
}
