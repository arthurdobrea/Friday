package net.arthur.springsecurityapp.service;

import net.arthur.springsecurityapp.model.User;

public interface UserService {

    User save(User user);

    User findByUsername(String username);

    User findLoggedInUser();
}
