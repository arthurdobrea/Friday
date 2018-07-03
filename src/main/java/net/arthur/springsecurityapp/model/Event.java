package net.arthur.springsecurityapp.model;



import com.fasterxml.jackson.annotation.JsonView;
import com.sun.org.apache.xml.internal.security.utils.Base64;
import javax.persistence.*;
import java.io.Serializable;
import java.time.LocalDateTime;
import java.util.Arrays;
import java.util.Objects;

@Entity
@Table(name = "events")
public class Event implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private int id;

    @JsonView(Views.Public.class)
    @Column(name = "event_name")
    private String title;

    @JsonView(Views.Public.class)
    @Column(name = "image")
    private byte[] image;

    @JsonView(Views.Public.class)
    @Enumerated(EnumType.STRING)
    @Column(name = "event_type")
    private EventType eventType;

    @JsonView(Views.Public.class)
    @ManyToOne
    @JoinColumn(name = "author_user_id", nullable = false)
    private User author;

    @JsonView(Views.Public.class)
    @Column(name = "event_location")
    private String location;

//    @ManyToMany
//    @JoinTable(name = "events_users", joinColumns = @JoinColumn(name = "event_id"),
//            inverseJoinColumns = @JoinColumn(name = "user_id"))
//    @BatchSize(size=1)
//    private List<User> participants = new ArrayList<>();

    @JsonView(Views.Public.class)
    @Column(name = "createdata")
    private LocalDateTime eventCreated = LocalDateTime.now();

    @JsonView(Views.Public.class)
    @Column(name = "timebegin")
    private LocalDateTime start;

    @JsonView(Views.Public.class)
    @Column(name = "timeend")
    private LocalDateTime end;

    @JsonView(Views.Public.class)
    @Column(name = "description")
    private String description;


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

    public byte[] getImage() {
        return image;
    }

    public void setImage(byte[] image) {
        this.image = image;
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

    public LocalDateTime getEventCreated() {
        return eventCreated;
    }

    public void setEventCreated(LocalDateTime eventCreated) {
        this.eventCreated = eventCreated;
    }

    public LocalDateTime getStart() {
        return start;
    }

    public String getImageBase64() {
        return Base64.encode(image);
    }

    public void setStart(LocalDateTime start) {
        this.start = start;
    }

    public LocalDateTime getEnd() {
        return end;
    }

    public void setEnd(LocalDateTime end) {
        this.end = end;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        Event event = (Event) o;
        return id == event.id &&
                Objects.equals(title, event.title) &&
                Arrays.equals(image, event.image) &&
                eventType == event.eventType &&
                Objects.equals(author, event.author) &&
                Objects.equals(location, event.location) &&
                Objects.equals(eventCreated, event.eventCreated) &&
                Objects.equals(start, event.start) &&
                Objects.equals(end, event.end) &&
                Objects.equals(description, event.description);
    }

    @Override
    public int hashCode() {

        int result = Objects.hash(id, title, eventType, author, location, eventCreated, start, end, description);
        result = 31 * result + Arrays.hashCode(image);
        return result;
    }

    @Override
    public String toString() {
        return "{" +
                "id:" + id +
                ", title:'" + title + '\'' +
                ", image[" + Arrays.toString(image) +
                ", eventType:" + eventType +
                ", author:" + author +
                ", location:'" + location + '\'' +
                ", eventCreated:" + eventCreated +
                ", start:" + start +
                ", end:" + end +
                ", description:'" + description + '\'' +
                '}';
    }
}