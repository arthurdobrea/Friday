package net.arthur.springsecurityapp.service.impl;

import net.arthur.springsecurityapp.dao.RoleDao;
import net.arthur.springsecurityapp.dao.UserDao;
import net.arthur.springsecurityapp.model.Role;
import net.arthur.springsecurityapp.model.User;
import net.arthur.springsecurityapp.service.SecurityService;
import net.arthur.springsecurityapp.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import javax.persistence.EntityManager;
import java.util.HashSet;
import java.util.Set;



@Service
public class UserServiceImpl implements UserService {


    private UserDao userDao;

    private RoleDao roleDao;

    private BCryptPasswordEncoder bCryptPasswordEncoder;

    private SecurityService securityService;

    private EntityManager entityManager;

    @Autowired
    public UserServiceImpl(UserDao userDao, RoleDao roleDao, BCryptPasswordEncoder bCryptPasswordEncoder, SecurityService securityService, EntityManager entityManager) {
        this.userDao = userDao;
        this.roleDao = roleDao;
        this.bCryptPasswordEncoder = bCryptPasswordEncoder;
        this.securityService = securityService;
        this.entityManager = entityManager;
    }

    @Override
    public User save(User user) {
        user.setPassword(bCryptPasswordEncoder.encode(user.getPassword()));
        Set<Role> roles = new HashSet<>();
        roles.add(roleDao.getOne(1L));
        user.setRoles(roles);
        System.out.println(user.getPassword() + "ENCODED PASSWORD");
        return userDao.save(user);
    }

    @Override
    public User findByUsername(String username) {
        return userDao.findByUsername(username);
    }

    @Override
    public User findLoggedInUser() {
        return findByUsername(securityService.findLoggedInUsername());
    }

    @Override
    @Transactional
    public void updateSubscription(String subscribedUser,String subscribedOnUser) {
        String subscribers = entityManager.createQuery("SELECT u.subscribedUsers FROM User u where u.username = :subscribedOnUser",String.class)
                .setParameter("subscribedOnUser",subscribedOnUser)
                .getSingleResult() + subscribedUser;


        entityManager.createQuery("update User u set u.subscribedUsers = :subscribers where u.username = :subscribedOnUser")
                .setParameter("subscribers",subscribers)
                .setParameter("subscribedOnUser",subscribedOnUser)
                .executeUpdate();
    }
}
