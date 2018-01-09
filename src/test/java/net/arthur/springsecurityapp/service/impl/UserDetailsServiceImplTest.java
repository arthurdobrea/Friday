package net.arthur.springsecurityapp.service.impl;

import net.arthur.springsecurityapp.dao.UserDao;
import net.arthur.springsecurityapp.model.Role;
import net.arthur.springsecurityapp.model.User;
import org.junit.After;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.userdetails.UserDetails;
import org.springframework.security.core.userdetails.UsernameNotFoundException;

import static java.util.Collections.singleton;
import static org.assertj.core.api.Assertions.assertThat;
import static org.assertj.core.api.Assertions.assertThatExceptionOfType;
import static org.mockito.Mockito.*;

@RunWith(MockitoJUnitRunner.class)
public class UserDetailsServiceImplTest {

    private static final String USERNAME = "ArthurAD";
    private static final String ENCODED_PASSWORD = "fsf23f23f2424f24";
    private static final String ROLE_NAME = "USER";

    @Mock
    private UserDao userDao;

    @InjectMocks
    private UserDetailsServiceImpl userDetailsService;

    @After
    public void tearDown() {
        verifyNoMoreInteractions(userDao);
    }

    @Test
    public void shouldLoadUserByUsername() {
        final User user = new User();
        user.setUsername(USERNAME);
        user.setPassword(ENCODED_PASSWORD);
        user.setRoles(singleton(new Role(ROLE_NAME)));

        final UserDetails expectedUserDetails = new org.springframework.security.core.userdetails.User(
                user.getUsername(),
                user.getPassword(),
                singleton(new SimpleGrantedAuthority(ROLE_NAME))
        );

        when(userDao.findByUsername(USERNAME)).thenReturn(user);

        final UserDetails actualUserDetails = userDetailsService.loadUserByUsername(USERNAME);

        verify(userDao).findByUsername(USERNAME);

        assertThat(actualUserDetails).isEqualTo(expectedUserDetails);
    }

    @Test
    public void shouldThrowUsernameExceptionWhenUsernameIsNull() {
        when(userDao.findByUsername(USERNAME)).thenReturn(null);

        assertThatExceptionOfType(UsernameNotFoundException.class)
                .isThrownBy(() -> userDetailsService.loadUserByUsername(USERNAME))
                .withMessage(String.format("User with username [%s] not found", USERNAME));

        verify(userDao).findByUsername(USERNAME);
    }

}