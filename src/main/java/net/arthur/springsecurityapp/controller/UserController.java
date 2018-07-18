package net.arthur.springsecurityapp.controller;

import net.arthur.springsecurityapp.dao.UserDao;
import net.arthur.springsecurityapp.model.User;
import net.arthur.springsecurityapp.model.dto.UserDto;
import net.arthur.springsecurityapp.service.EventService;
import net.arthur.springsecurityapp.service.SecurityService;
import net.arthur.springsecurityapp.service.UserService;
import net.arthur.springsecurityapp.util.Pages;
import net.arthur.springsecurityapp.util.URLs;
import net.arthur.springsecurityapp.validator.UserValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.*;

import java.util.ArrayList;
import java.util.List;

import static net.arthur.springsecurityapp.util.Pages.redirectFrom;

@Controller
public class UserController {

    private static final String ALL_EVENTS_ATTR = "allEvents";
    private static final String ERROR_ATTR = "error";
    private static final String USER_FORM_ATTR = "userForm";
    private static final String USER = "user";

    private final UserService userService;

    private final SecurityService securityService;

    private final UserValidator userValidator;

    private final EventService eventService;

    private final UserDao userDao;

    @Autowired
    public UserController(final UserService userService,
                          final SecurityService securityService,
                          final UserValidator userValidator,
                          final EventService eventService, UserDao userDao) {
        this.userService = userService;
        this.securityService = securityService;
        this.userValidator = userValidator;
        this.eventService = eventService;
        this.userDao = userDao;
    }

    @GetMapping(URLs.REGISTRATION)
    public String registration(final Model model) {
        model.addAttribute(USER_FORM_ATTR, new User());
        return Pages.REGISTRATION;
    }

    @PostMapping(URLs.REGISTRATION)
    public String registration(@ModelAttribute(USER_FORM_ATTR) final User userForm, final BindingResult bindingResult) {
        userValidator.validate(userForm, bindingResult);

        if (bindingResult.hasErrors()) {
            return Pages.REGISTRATION;
        }

        userService.save(userForm);

        securityService.autoLogin(userForm.getUsername(), userForm.getConfirmPassword());

        return Pages.INDEX;
    }

    @GetMapping(URLs.LOGIN)
    public String login(final Model model, String error, String logout) {

        if (error != null) {
            model.addAttribute(ERROR_ATTR, "Username or password is incorrect.");
            return Pages.LOGIN;
        }

        if (logout != null) {
            model.addAttribute(ALL_EVENTS_ATTR, eventService.getAllEvents());
            model.addAttribute(USER_FORM_ATTR, new User());
            return Pages.INDEX;
        }

        model.addAttribute(ALL_EVENTS_ATTR, eventService.getAllEvents());
        model.addAttribute(USER_FORM_ATTR, new User());
        return Pages.LOGIN;

    }

    @GetMapping(URLs.USER)
    public String userPage(Model model) {
        model.addAttribute(USER,userService.findLoggedInUser());
        model.addAttribute(ALL_EVENTS_ATTR, eventService.getAllEvents());
        return Pages.USER;
    }

    @GetMapping("/user/{username}")
    public String getUser(Model model, @PathVariable String username){
        User user = userService.findByUsername(username);
        model.addAttribute(USER, user);
        model.addAttribute(ALL_EVENTS_ATTR, eventService.getEventsByAuthor(user.getId()));
        String image = userService.findLoggedInUser().getImageBase64();
        model.addAttribute("image",image);
        return Pages.USER;
    }

    @GetMapping("/userSetting/{username}")
    public String userSettings(Model model, @PathVariable String username) {
        model.addAttribute("userDto", new UserDto());
        List<String> types = new ArrayList<>();
        types.add("MEETING");
        types.add("MASTER");
        types.add("MOVIE");
        types.add("PARTY");
        types.add("OTHER");
        types.add("MUSIC");
        types.add("SHOW");
        types.add("THEATER");
        types.add("TRAINING");
        types.add("RAP");
        types.add("BOARDGAMES");
        model.addAttribute("types",types);
        String image = userService.findLoggedInUser().getImageBase64();
        model.addAttribute("image",image);
        return Pages.USERSETTINGS;
    }

    @PostMapping("/update")
    public String userSettings(@ModelAttribute("userDto") final UserDto userDto){
        userDto.setUsername(userService.findLoggedInUser().getUsername());
        User user = userDto.toUser();
        userDao.updateUserInformation(user.getFirstname(),user.getUsername(),user.getLastname(),user.getImage());
        return Pages.USERSETTINGS;
    }

    @PostMapping("/user/subscribe/{subscribedOnUser}&{title}")
    public String subscribeOnUser(@PathVariable String subscribedOnUser,
                                  @PathVariable String title){
        String subscribedUser = userService.findLoggedInUser().getUsername().concat(",");
        userService.updateSubscription(subscribedUser,subscribedOnUser);
        return redirectFrom(Pages.EVENT) + title;
    }

    @PostMapping("/type")
    public String type(@RequestParam(required=false,name = "MASTER") String MASTER,
                       @RequestParam(required=false,name = "MOVIE") String MOVIE,
                       @RequestParam(required=false,name = "PARTY") String PARTY,
                       @RequestParam(required=false,name = "OTHER") String OTHER,
                       @RequestParam(required=false,name = "MUSIC") String MUSIC)
    {
        String resultString = "";
        resultString +=MASTER;
        resultString +=MOVIE;
        resultString +=PARTY;
        resultString +=OTHER;
        resultString +=MUSIC;
        String username = userService.findLoggedInUser().getUsername();
        userDao.updateUserSubscription(resultString,username);

        return Pages.INDEX;
    }

}
