package net.arthur.springsecurityapp.controller;

import net.arthur.springsecurityapp.model.User;
import net.arthur.springsecurityapp.service.EventService;
import net.arthur.springsecurityapp.service.UserService;
import net.arthur.springsecurityapp.util.Pages;
import net.arthur.springsecurityapp.util.URLs;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class HomeController {

    private static final String ALL_EVENTS_ATTR = "allEvents";

    private final EventService eventService;

    private final UserService userService;

    @Autowired
    public HomeController(EventService eventService, UserService userService) {
        this.eventService = eventService;
        this.userService = userService;
    }

    @GetMapping(URLs.INDEX)
    public String index(Model model) {
        model.addAttribute(ALL_EVENTS_ATTR, eventService.getAllEvents());
        return Pages.INDEX;
    }
    @GetMapping(URLs.USER)
    public String userPage(Model model) {
        model.addAttribute(ALL_EVENTS_ATTR, eventService.getAllEvents());
        return Pages.USER;
    }

    @GetMapping("/user/{username}")
    public String userSettings(Model model, @PathVariable String username) {
        model.addAttribute("user",userService.findByUsername(username));
        return Pages.USERSETTINGS;
    }

    @PostMapping("/update")
    public String userSettings(@ModelAttribute("User") final User user){
        userService.update(user);
        return Pages.USERSETTINGS;
    }

}
