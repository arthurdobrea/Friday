package net.arthur.springsecurityapp.model;

import com.fasterxml.jackson.annotation.JsonIgnore;

import com.sun.org.apache.xml.internal.security.utils.Base64;

import javax.persistence.*;

import java.io.Serializable;

import java.util.*;

@Entity
@Table(name = "users")
public class User implements Serializable {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;

    @Column(name = "username")
    private String username;

    @Column(name = "firstname")
    private String firstname;

    @Column(name = "lastname")
    private String lastname;

    @Column(name = "email")
    private String email;

    @Column(name = "password")
    private String password;

    @JsonIgnore
    @Transient
    private String confirmPassword;

    @JsonIgnore
    @Column(name = "image")
    private byte[] image;

    @Column(name = "subscription_by_event_type")
    private String subscriptionByEventType;

    @ManyToMany(fetch = FetchType.LAZY)
    @JoinTable(name = "user_roles", joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name = "role_id"))
    private Set<Role> roles;

    @ManyToMany(mappedBy = "participants", fetch = FetchType.LAZY)
    private List<Event> events = new ArrayList<>(); //events in which user participates

    @OneToMany(mappedBy = "author", fetch = FetchType.LAZY)
    private List<Event> eventsOfAuthor = new ArrayList<>();

    @OneToMany(mappedBy = "user",fetch = FetchType.LAZY)
    private List<Notification> notifications;

    public User() {

    }

    public User(String username) {
        this.username = username;
    }

    public Long getId() {
        return id;
    }

    public void setId(Long id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public String getFirstname() {
        return firstname;
    }

    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }

    public String getLastname() {
        return lastname;
    }

    public void setLastname(String lastname) {
        this.lastname = lastname;
    }

    public String getFullName() {
        return getFirstname() + " " + getLastname();
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getConfirmPassword() {
        return confirmPassword;
    }

    public void setConfirmPassword(String confirmPassword) {
        this.confirmPassword = confirmPassword;
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

    public String getSubscriptionByEventType() {
        return subscriptionByEventType;
    }

    public void setSubscriptionByEventType(String subscriptionByEventType) {
        this.subscriptionByEventType = subscriptionByEventType;
    }

    public Set<EventType> getSubscriptionByEventTypeAsEnums() {
        Set<EventType> subscriptionByEventTypeSet;
        subscriptionByEventTypeSet = new HashSet<>();
        String labelArray[];

        try {
            labelArray = subscriptionByEventType.split(",");
        } catch (Exception e) {
            return subscriptionByEventTypeSet;
        }

        for (String label : labelArray) {
            for (EventType eventType : EventType.values()) {
                if (label.equals(eventType.toString())) {
                    subscriptionByEventTypeSet.add(eventType);
                }
            }
        }

        return subscriptionByEventTypeSet;
    }

    public List<Event> getEventsOfAuthor() {
        return eventsOfAuthor;
    }

    public void setEventsOfAuthor(List<Event> eventsOfAuthor) {
        this.eventsOfAuthor = eventsOfAuthor;
    }

    public Set<Role> getRoles() {
        return roles;
    }

    public void setRoles(Set<Role> roles) {
        this.roles = roles;
    }

    public List<Event> getEvents() {
        return events;
    }

    public void setEvents(List<Event> events) {
        this.events = events;
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

        User user = (User) o;

        if (!id.equals(user.id)) return false;
        if (!username.equals(user.username)) return false;
        if (firstname != null ? !firstname.equals(user.firstname) : user.firstname != null) return false;
        if (lastname != null ? !lastname.equals(user.lastname) : user.lastname != null) return false;
        if (!email.equals(user.email)) return false;
        if (!password.equals(user.password)) return false;
        if (confirmPassword != null ? !confirmPassword.equals(user.confirmPassword) : user.confirmPassword != null)
            return false;
        if (!Arrays.equals(image, user.image)) return false;
        if (subscriptionByEventType != null ? !subscriptionByEventType.equals(user.subscriptionByEventType) : user.subscriptionByEventType != null)
            return false;
        if (roles != null ? !roles.equals(user.roles) : user.roles != null) return false;
        if (events != null ? !events.equals(user.events) : user.events != null) return false;
        if (eventsOfAuthor != null ? !eventsOfAuthor.equals(user.eventsOfAuthor) : user.eventsOfAuthor != null)
            return false;
        return notifications != null ? notifications.equals(user.notifications) : user.notifications == null;
    }

    @Override
    public int hashCode() {
        int result = id.hashCode();
        result = 31 * result + username.hashCode();
        result = 31 * result + (firstname != null ? firstname.hashCode() : 0);
        result = 31 * result + (lastname != null ? lastname.hashCode() : 0);
        result = 31 * result + email.hashCode();
        result = 31 * result + password.hashCode();
        result = 31 * result + (confirmPassword != null ? confirmPassword.hashCode() : 0);
        result = 31 * result + Arrays.hashCode(image);
        result = 31 * result + (subscriptionByEventType != null ? subscriptionByEventType.hashCode() : 0);
        result = 31 * result + (roles != null ? roles.hashCode() : 0);
        result = 31 * result + (events != null ? events.hashCode() : 0);
        result = 31 * result + (eventsOfAuthor != null ? eventsOfAuthor.hashCode() : 0);
        result = 31 * result + (notifications != null ? notifications.hashCode() : 0);
        return result;
    }

    @Override
    public String toString() {
        return "User{" +
                "id=" + id +
                ", username='" + username + '\'' +
                ", firstname='" + firstname + '\'' +
                ", lastname='" + lastname + '\'' +
                '}';
    }
}
