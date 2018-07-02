package net.arthur.springsecurityapp.controller;

import com.fasterxml.jackson.annotation.JsonView;
import net.arthur.springsecurityapp.model.DateView;
import net.arthur.springsecurityapp.model.Event;
import net.arthur.springsecurityapp.model.Views;
import net.arthur.springsecurityapp.service.EventService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.ArrayList;
import java.util.List;

@RestController
public class AjaxController {

    @Autowired
    EventService eventService;

    @JsonView(Views.Public.class)
    @RequestMapping(value = "/search/api/create")
    public List<Event> getDate(@RequestBody DateView search){
        System.out.println(search.getDate());
//        String newDate = search.getDate().replace(' ','-');
//        DateTimeFormatter formatter = DateTimeFormatter.ofPattern("yyyy-MM-dd");
//        LocalDate dateTime = LocalDate.parse(newDate, formatter);
        return eventService.getAllEvents();
        //TODO: CHANGE DATE FORMAT IN POJO
    }
}
