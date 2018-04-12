package net.arthur.springsecurityapp.controller;

import net.arthur.springsecurityapp.model.User;
import net.arthur.springsecurityapp.service.SecurityService;
import net.arthur.springsecurityapp.service.UserService;
import net.arthur.springsecurityapp.util.Pages;
import net.arthur.springsecurityapp.util.URLs;
import net.arthur.springsecurityapp.validator.UserValidator;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PostMapping;

@Controller
public class UserController {

    private static final String ERROR_ATTR = "error";
    private static final String MESSAGE_ATTR = "message";
    private static final String USER_FORM_ATTR = "userForm";

    private final UserService userService;

    private final SecurityService securityService;

    private final UserValidator userValidator;

    @Autowired
    public UserController(final UserService userService,
                          final SecurityService securityService,
                          final UserValidator userValidator) {
        this.userService = userService;
        this.securityService = securityService;
        this.userValidator = userValidator;
    }

    @GetMapping(URLs.REGISTRATION)
    public String registration(final Model model) {
        model.addAttribute(USER_FORM_ATTR, new User());

        return Pages.REGISTRATION;
    }

    @PostMapping(URLs.REGISTRATION)
    public String registration(@ModelAttribute(USER_FORM_ATTR) final User userForm, final BindingResult bindingResult) {
        userValidator.validate(userForm, bindingResult);

        System.out.println(userForm.getPassword());

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
        }

        if (logout != null) {
            model.addAttribute(MESSAGE_ATTR, "Logged out successfully.");
        }

        return Pages.LOGIN;
    }

}
