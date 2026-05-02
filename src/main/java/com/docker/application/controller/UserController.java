package com.docker.application.controller;

import com.docker.application.entities.User;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

@RestController
public class UserController {

    @GetMapping("/users")
    public List<User> getUsers() {

        return List.of(
                new User(1, "Deepak", "deepak@example.com"),
                new User(2, "Amit", "amit@example.com"),
                new User(3, "Rahul", "rahul@example.com")
        );
    }
}