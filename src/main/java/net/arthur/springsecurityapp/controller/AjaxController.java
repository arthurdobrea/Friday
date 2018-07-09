package net.arthur.springsecurityapp.controller;

import com.fasterxml.jackson.annotation.JsonView;
import net.arthur.springsecurityapp.model.*;
import net.arthur.springsecurityapp.service.EventService;
import net.arthur.springsecurityapp.util.Pages;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.time.LocalDate;
import java.util.List;

@RestController
public class AjaxController {

    @Autowired
    EventService eventService;

    @JsonView(Views.Public.class)
    @RequestMapping(value = "/search/api/create")
    public List<Event> getDate(@RequestBody DateView search) {
        LocalDate date = LocalDate.parse(search.getDate());
        return eventService.geteventsbydate(date);

    }

    @RequestMapping(value = "/event/filter")
    public List<Event> getType(@RequestBody String tag) {
        return eventService.getEventsByType(EventType.valueOf(tag.toUpperCase()));
    }
}
