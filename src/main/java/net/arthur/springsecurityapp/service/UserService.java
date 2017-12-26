package net.arthur.springsecurityapp.service;

import net.arthur.springsecurityapp.model.User;

public interface UserService {

    void save(User user);

    User findByUsername(String username);
}
