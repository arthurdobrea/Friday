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

@Controller
public class HomeController {

    private static final String USER_FORM_ATTR = "userForm";

    private final EventService eventService;

    private final UserService userService;

    @Autowired
    public HomeController(EventService eventService, UserService userService) {
        this.eventService = eventService;
        this.userService = userService;
    }

    @GetMapping(URLs.INDEX)
    public String index(Model model) {
        model.addAttribute(USER_FORM_ATTR, new User());
        if(userService.findLoggedInUser() == null) {
            return Pages.INDEX;
        }
        String image = userService.findLoggedInUser().getImageBase64();
        model.addAttribute("image",image);
        return Pages.INDEX;
    }


}
