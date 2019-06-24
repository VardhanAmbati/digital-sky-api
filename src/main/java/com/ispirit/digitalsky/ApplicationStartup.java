package com.ispirit.digitalsky;

import com.ispirit.digitalsky.domain.User;
import com.ispirit.digitalsky.domain.UserRole;
import com.ispirit.digitalsky.service.api.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.context.event.ApplicationReadyEvent;
import org.springframework.context.ApplicationListener;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Component;

import java.util.ArrayList;

@Component
public class ApplicationStartup implements ApplicationListener<ApplicationReadyEvent>{

    @Autowired
    private UserService userService;

    @Autowired
    private PasswordEncoder encoder;

    @Override
    public void onApplicationEvent(ApplicationReadyEvent applicationReadyEvent) {
        UserRole adminRole = new UserRole(1, "ROLE_ADMIN");
        ArrayList<UserRole> roles = new ArrayList<UserRole>();
        roles.add(adminRole);
        User user = new User(
                "Administrator",
                "admin@inteamo.in",
                encoder.encode("Inteamo2019")
                );

        userService.createNew(user);
        System.out.println("Admin User created");
    }
}
