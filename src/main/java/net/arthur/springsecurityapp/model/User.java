package net.arthur.springsecurityapp.model;

import com.fasterxml.jackson.annotation.JsonIgnore;
import com.fasterxml.jackson.annotation.JsonView;

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

    @JsonView(Views.Public.class)
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

    @Basic
    @JsonView(Views.Public.class)
    @Column(name = "image")
    private byte[] image;

    @Column(name = "subscription_by_event_type")
    private String subscriptionByEventType;

    @ManyToMany(fetch = FetchType.EAGER)
    @JoinTable(name = "user_roles", joinColumns = @JoinColumn(name = "user_id"),
            inverseJoinColumns = @JoinColumn(name = "role_id"))
    private Set<Role> roles;

//    @ManyToMany(mappedBy = "participants", fetch = FetchType.LAZY)
//    private List<Event> events = new ArrayList<>(); //events in which user participates

    @OneToMany(mappedBy = "author", fetch = FetchType.LAZY)
    private List<Event> eventsOfAuthor = new ArrayList<>();


    public User() {
    }

    public User(String username, String firstname, String lastname, byte[] image) {
        this.username = username;
        this.firstname = firstname;
        this.lastname = lastname;
        this.image = image;
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


    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        User user = (User) o;
        return Objects.equals(id, user.id) &&
                Objects.equals(username, user.username) &&
                Objects.equals(firstname, user.firstname) &&
                Objects.equals(lastname, user.lastname) &&
                Objects.equals(email, user.email) &&
                Objects.equals(password, user.password) &&
                Objects.equals(confirmPassword, user.confirmPassword) &&
                Arrays.equals(image, user.image) &&
                Objects.equals(subscriptionByEventType, user.subscriptionByEventType) &&
                Objects.equals(roles, user.roles) &&
                Objects.equals(eventsOfAuthor, user.eventsOfAuthor);
    }

    @Override
    public int hashCode() {

        int result = Objects.hash(id, username, firstname, lastname, email, password, confirmPassword, subscriptionByEventType, roles, eventsOfAuthor);
        result = 31 * result + Arrays.hashCode(image);
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
