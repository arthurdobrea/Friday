package net.arthur.springsecurityapp.service.impl;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.junit.MockitoJUnitRunner;
import org.springframework.security.authentication.UsernamePasswordAuthenticationToken;
import org.springframework.security.core.authority.SimpleGrantedAuthority;
import org.springframework.security.core.context.SecurityContext;
import org.springframework.security.core.context.SecurityContextHolder;
import org.springframework.security.core.userdetails.User;

import static java.util.Collections.singleton;
import static org.assertj.core.api.Assertions.assertThat;

@RunWith(MockitoJUnitRunner.class)
public class SecurityServiceImplTest {

    private static final String USERNAME = "ArthurAD";
    private static final String ENCODED_PASSWORD = "fsf23f23f2424f24";


    private SecurityServiceImpl securityService = new SecurityServiceImpl(null, null);

    @Test
    public void shouldFindLoggedInUsername() {
        initSecurityContextWithUser(new User(USERNAME, ENCODED_PASSWORD, singleton(new SimpleGrantedAuthority("USER"))));

        final String actualUsername = securityService.findLoggedInUsername();

        assertThat(actualUsername).isEqualTo(USERNAME);
    }

    @Test
    public void shouldReturnNullWhenUser() {
        initSecurityContextWithUser(new Object());

        final String actualUsername = securityService.findLoggedInUsername();

        assertThat(actualUsername).isNull();
    }

    private static void initSecurityContextWithUser(final Object user) {
        final SecurityContext context = SecurityContextHolder.getContext();
        final UsernamePasswordAuthenticationToken token = new UsernamePasswordAuthenticationToken(user, null);
        token.setDetails("");
        context.setAuthentication(token);
    }

}