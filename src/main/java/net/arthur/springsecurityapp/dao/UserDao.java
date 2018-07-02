package net.arthur.springsecurityapp.dao;


import net.arthur.springsecurityapp.model.User;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.transaction.annotation.Transactional;
import org.springframework.web.multipart.commons.CommonsMultipartFile;


public interface UserDao extends JpaRepository<User, Long> {
    User findByUsername(String username);

    @Transactional
    @Modifying
    @Query("update User u set u.subscriptionByEventType =:subscriptionByEventType WHERE u.username =:userName")
    void updateUserSubscription(@Param("subscriptionByEventType") String subscriptionByEventType, @Param("userName") String username);

    @Transactional
    @Modifying
    @Query("update User u set u.firstname =:firstName, u.lastname =:lastName, u.image =:image  WHERE u.username =:userName")
    void updateUserInformation(@Param("firstName") String firstName,
                               @Param("userName") String username,
                               @Param("lastName") String lastName,
                               @Param("image") byte[] image);
}
