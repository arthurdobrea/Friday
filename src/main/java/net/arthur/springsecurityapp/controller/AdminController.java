package net.arthur.springsecurityapp.controller;

import net.arthur.springsecurityapp.util.URLs;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class AdminController {

    @GetMapping(URLs.ADMIN)
    public String admin() {
        return "admin";
    }
}
