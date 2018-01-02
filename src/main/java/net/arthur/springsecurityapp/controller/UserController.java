package net.arthur.springsecurityapp.controller;

import net.arthur.springsecurityapp.dao.EventDao;
import net.arthur.springsecurityapp.model.Event;
import net.arthur.springsecurityapp.model.EventType;
import net.arthur.springsecurityapp.model.User;
import net.arthur.springsecurityapp.service.EventService;
import net.arthur.springsecurityapp.service.SecurityService;
import net.arthur.springsecurityapp.service.UserService;
import net.arthur.springsecurityapp.validator.UserValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import java.security.Principal;
import java.time.LocalDateTime;
import java.time.format.DateTimeFormatter;
import java.util.List;

@Controller
public class UserController {

    @Autowired
    private UserService userService;

    @Autowired
    private SecurityService securityService;

    @Autowired
    private UserValidator userValidator;

    @Autowired
    private EventService eventService;


    @RequestMapping(value = "/registration", method = RequestMethod.GET)
    public String registration(Model model) {
        model.addAttribute("userForm", new User());

        return "registration";
    }

    @RequestMapping(value = "/registration", method = RequestMethod.POST)
    public String registration(@ModelAttribute("userForm") User userForm, BindingResult bindingResult) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return "registration";
        }

        userService.save(userForm);

        securityService.autoLogin(userForm.getUsername(), userForm.getConfirmPassword());

        return "redirect:/welcome";
    }

    @RequestMapping(value = "/login", method = RequestMethod.GET)
    public String login(Model model, String error, String logout) {
        if (error != null) {
            model.addAttribute("error", "Username or password is incorrect.");
        }

        if (logout != null) {
            model.addAttribute("message", "Logged out successfully.");
        }

        return "login";
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public String index() {
        return "index";
    }

    @RequestMapping(value = {"/welcome"}, method = RequestMethod.GET)
    public String welcome() {
        return "welcome";
    }

    @RequestMapping(value = "/admin", method = RequestMethod.GET)
    public String admin() {
        return "admin";
    }

    @RequestMapping(value = "/createEvent", method = RequestMethod.GET)
    public String createEvent(Model model) {
        EventType[] eventType = EventType.values();
        model.addAttribute("eventTypes", eventType);
        return "createEvent";
    }

    @RequestMapping(value = "/createEvent", method = RequestMethod.POST)
    public void createEvent(Model model, @ModelAttribute("title") String title,
                            @ModelAttribute("location") String location,
                            @ModelAttribute("eventType") EventType eventType,
                            @ModelAttribute("startDate")String startDate,
                            @ModelAttribute("startTime")String startTime,
                            @ModelAttribute("endDate")String endDate,
                            @ModelAttribute("endTime")String endTime,
                            @ModelAttribute("description") String description,
                            @RequestParam CommonsMultipartFile[] fileUpload) {

        String start = startDate.concat(" " + startTime);
        String end = endDate.concat(" " + endTime);
        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd HH:mm");
        LocalDateTime startDateEvent = LocalDateTime.parse(start, formatter);
        LocalDateTime endDateEvent = LocalDateTime.parse(end, formatter);

        if (fileUpload != null && fileUpload.length > 0) {
            for (CommonsMultipartFile aFile : fileUpload) {
                //TODO: make image persist logic

                eventService.saveEvent(new Event(title, eventType, location, startDateEvent, endDateEvent, description, aFile.getBytes()));
            }
        }
    }
}
