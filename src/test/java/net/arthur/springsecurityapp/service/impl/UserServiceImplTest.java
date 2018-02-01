package net.arthur.springsecurityapp.service.impl;

import net.arthur.springsecurityapp.dao.RoleDao;
import net.arthur.springsecurityapp.dao.UserDao;
import net.arthur.springsecurityapp.model.Role;
import net.arthur.springsecurityapp.model.User;
import org.junit.After;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.junit.MockitoJUnitRunner;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import static org.assertj.core.api.Assertions.assertThat;
import static org.mockito.Mockito.*;

@RunWith(MockitoJUnitRunner.class)
public class UserServiceImplTest {

    private static final String USERNAME = "ArthurADD";
    public static final String PASSWORD = "d2f2red23er2f3d";
    public static final String ENCODED_PASSWORD = "fsf23f23f2424f24";
    public static final long USER_ID = 1L;

    @Mock
    private BCryptPasswordEncoder bCryptPasswordEncoder;

    @Mock
    private RoleDao roleDao;

    @Mock
    private UserDao userDao;

    @InjectMocks
    private UserServiceImpl userService;

    @After
    public void tearDown() {
        verifyNoMoreInteractions(bCryptPasswordEncoder, roleDao, userDao);
    }

    @Test
    public void shouldSaveUser() {
        final User user = new User(USERNAME);
        user.setPassword(PASSWORD);

        when(bCryptPasswordEncoder.encode(PASSWORD)).thenReturn(ENCODED_PASSWORD);
        when(roleDao.getOne(USER_ID)).thenReturn(new Role());
        when(userDao.save(user)).thenReturn(user);

        final User actualUser = userService.save(user);

        verify(bCryptPasswordEncoder).encode(PASSWORD);
        verify(roleDao).getOne(USER_ID);
        verify(userDao).save(user);

        assertThat(actualUser).isEqualTo(user);
    }

    @Test
    public void shouldFindByUserName() {
        final User user = new User(USERNAME);

        when(userDao.findByUsername(USERNAME)).thenReturn(user);

        final User actualUser = userService.findByUsername(USERNAME);

        verify(userDao).findByUsername(USERNAME);

        assertThat(actualUser).isEqualTo(user);
    }
}
