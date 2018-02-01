package net.arthur.springsecurityapp.model;

import com.sun.org.apache.xml.internal.security.utils.Base64;
import org.hibernate.annotations.BatchSize;
import org.hibernate.annotations.Fetch;
import org.hibernate.annotations.FetchMode;

import javax.persistence.*;
import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.List;

@Entity
@Table(name = "events")
public class Event implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @Column(name = "event_name")
    private String title;

    @Lob
    @Basic(fetch = FetchType.LAZY)
    @Column(name = "image")
    private byte[] image;

    @Enumerated(EnumType.STRING)
    @Column(name = "event_type")
    private EventType eventType;

    @ManyToOne
    @JoinColumn(name = "author_user_id", nullable = false)
    private User author;

    @Column(name = "event_location")
    private String location;

    @ManyToMany
    @JoinTable(name = "events_users", joinColumns = @JoinColumn(name = "event_id"),
            inverseJoinColumns = @JoinColumn(name = "user_id"))
    @BatchSize(size=1)
    private List<User> participants = new ArrayList<>();

    @Column(name = "createdata")
    private LocalDateTime eventCreated = LocalDateTime.now();

    @Column(name = "timebegin")
    private LocalDateTime start;

    @Column(name = "timeend")
    private LocalDateTime end;

    @Column(name = "description")
    private String description;

    @OneToMany(mappedBy = "event")
    @BatchSize(size=1)
    private List<Notification> notifications;

    public Event() {

    }

    public Event(String title) {
        this.title = title;
    }

    public Event(String title, EventType eventType, String location, LocalDateTime timeBegin, LocalDateTime timeEnd,
                 String description) {
        this(title);
        this.eventType = eventType;
        this.location = location;
        this.start = timeBegin;
        this.end = timeEnd;
        this.description = description;
    }

    public Event(String title, EventType eventType, String location, LocalDateTime timeBegin, LocalDateTime timeEnd,
                 String description, byte[] image) {
        this(title, eventType, location, timeBegin, timeEnd, description);
        this.image = image;
    }

    public Event(String title, EventType eventType, String location, LocalDateTime timeBegin, LocalDateTime timeEnd,
                 String description, byte[] image, User author) {
        this(title, eventType, location, timeBegin, timeEnd, description, image);
        this.author = author;
    }


    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getTitleAndId() {
        return "{id: " + id + ", title: " + title + "}";
    }

    public EventType getEventType() {
        return eventType;
    }

    public void setEventType(EventType eventType) {
        this.eventType = eventType;
    }

    public User getAuthor() {
        return author;
    }

    public void setAuthor(User author) {
        this.author = author;
    }

    public String getLocation() {
        return location;
    }

    public void setLocation(String location) {
        this.location = location;
    }

    public List<User> getParticipants() {
        return new ArrayList<>(new HashSet<>(participants));
    }

    public void setParticipants(List<User> participants) {
        this.participants = participants;
    }

    public String getParticipantsToString() {
        if (participants.isEmpty() || participants == null) {
            return null;
        }

        StringBuilder part = new StringBuilder();

        for (User participant : getParticipants()) {
            part.append(participant.getFullName() + ",");
        }

        return part.toString();
    }

    public LocalDateTime getEventCreated() {
        return eventCreated;
    }

    public void setEventCreated(LocalDateTime eventCreated) {
        this.eventCreated = eventCreated;
    }

    public LocalDateTime getStart() {
        return start;
    }

    public void setStart(LocalDateTime start) {
        start.toString().substring(11);
        this.start = start;

    }

    public LocalDateTime getEnd() {
        return end;
    }

    public void setEnd(LocalDateTime end) {
        this.end = end;
    }

    public String getImageBase64() {
        return Base64.encode(image);
    }

    public byte[] getImage() {
        return image;
    }

    public void setImage(byte[] image) {
        this.image = image;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }


    public List<Notification> getNotifications() {
        return notifications;
    }

    public void setNotifications(List<Notification> notifications) {
        this.notifications = notifications;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;

        Event event = (Event) o;

        if (id != event.id) return false;
        if (title != null ? !title.equals(event.title) : event.title != null) return false;
        if (eventType != event.eventType) return false;
        if (!author.equals(event.author)) return false;
        if (!location.equals(event.location)) return false;
        if (!start.equals(event.start)) return false;
        if (!end.equals(event.end)) return false;
        if (!eventCreated.equals(event.eventCreated)) return false;
        return description.equals(event.description);
    }

    @Override
    public int hashCode() {
        int result = id;
        result = 31 * result + (title != null ? title.hashCode() : 0);
        result = 31 * result + (eventType != null ? eventType.hashCode() : 0);
        result = 31 * result + (author != null ? author.hashCode() : 0);
        result = 31 * result + (location != null ? location.hashCode() : 0);
        result = 31 * result + (participants != null ? participants.hashCode() : 0);
        result = 31 * result + (start != null ? start.hashCode() : 0);
        result = 31 * result + (end != null ? end.hashCode() : 0);
        result = 31 * result + (eventCreated != null ? eventCreated.hashCode() : 0);
        result = 31 * result + (description != null ? description.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "Event{" +
                "id=" + id +
                ", title='" + title +
                ", eventType=" + eventType +
                ", author=" + author +
                ", location='" + location +
                ", participants=" + participants +
                ", start=" + start +
                ", end=" + end +
                ", eventCreated=" + eventCreated +
                ", description='" + description +
                '}';
    }
}