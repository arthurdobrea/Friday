package net.arthur.springsecurityapp.model.dto;

import net.arthur.springsecurityapp.model.User;
import org.springframework.web.multipart.commons.CommonsMultipartFile;

import java.util.Arrays;
import java.util.Objects;

public class UserDto {

    private String username;

    private String firstName;

    private String lastName;

    private String description;

    private CommonsMultipartFile[] image;

    public UserDto() {
    }

    public UserDto(String username, String firstName, String lastName, String description, CommonsMultipartFile[] image) {
        this.username = username;
        this.firstName = firstName;
        this.lastName = lastName;
        this.description = description;
        this.image = image;
    }

    public String getFirstName() {
        return firstName;
    }

    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    public String getLastName() {
        return lastName;
    }

    public void setLastName(String lastName) {
        this.lastName = lastName;
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

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
    }

    public User toUser(){
        return new User(username,firstName,lastName,image[0].getBytes());
    }

    @Override
    public boolean equals(Object o) {
        if (this == o) return true;
        if (o == null || getClass() != o.getClass()) return false;
        UserDto userDto = (UserDto) o;
        return Objects.equals(firstName, userDto.firstName) &&
                Objects.equals(lastName, userDto.lastName) &&
                Objects.equals(description, userDto.description) &&
                Arrays.equals(image, userDto.image);
    }

    @Override
    public int hashCode() {

        int result = Objects.hash(firstName, lastName, description);
        result = 31 * result + Arrays.hashCode(image);
        return result;
    }
}
