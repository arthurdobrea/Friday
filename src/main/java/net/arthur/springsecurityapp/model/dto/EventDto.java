package net.arthur.springsecurityapp.model.dto;

import net.arthur.springsecurityapp.model.Event;
import net.arthur.springsecurityapp.model.EventType;
import net.arthur.springsecurityapp.validator.FutureOrPresent;
import org.hibernate.validator.constraints.NotEmpty;
import org.springframework.format.annotation.DateTimeFormat;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import javax.validation.constraints.NotNull;
import java.io.Serializable;
import java.time.LocalDate;
import java.time.LocalDateTime;
import java.time.LocalTime;

@FutureOrPresent(message = "Start date should be before end date")
public class EventDto implements Serializable {

    private static final long serialVersionUID = 3784117523668219777L;

    @NotEmpty(message = "Title can't be empty")
    private String title;

    @NotEmpty(message = "Location can't be empty")
    private String location;

    @NotNull(message = "Event type is required")
    private EventType eventType;

    @NotNull(message = "Date can't be empty")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate startDate;

    @NotNull(message = "Time can't be empty")
    @DateTimeFormat(pattern = "HH:mm")
    private LocalTime startTime;

    @NotNull(message = "Date can't be empty")
    @DateTimeFormat(pattern = "yyyy-MM-dd")
    private LocalDate endDate;

    @NotNull(message = "Time can't be empty")
    @DateTimeFormat(pattern = "HH:mm")
    private LocalTime endTime;

    private String description;

    private CommonsMultipartFile[] image;

    public EventDto() {
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public EventType getEventType() {
        return eventType;
    }

    public void setEventType(EventType eventType) {
        this.eventType = eventType;
    }

    public LocalDate getStartDate() {
        return startDate;
    }

    public void setStartDate(LocalDate startDate) {
        this.startDate = startDate;
    }

    public LocalTime getStartTime() {
        return startTime;
    }

    public void setStartTime(LocalTime startTime) {
        this.startTime = startTime;
    }

    public LocalDate getEndDate() {
        return endDate;
    }

    public void setEndDate(LocalDate endDate) {
        this.endDate = endDate;
    }

    public LocalTime getEndTime() {
        return endTime;
    }

    public void setEndTime(LocalTime endTime) {
        this.endTime = endTime;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public CommonsMultipartFile[] getImage() {
        return image;
    }

    public void setImage(CommonsMultipartFile[] image) {
        this.image = image;
    }

    public Event toEvent() {
        return new Event(title, eventType, location, LocalDateTime.of(startDate, startTime), LocalDateTime.of(endDate, endTime), description, image[0].getBytes());
    }
}
