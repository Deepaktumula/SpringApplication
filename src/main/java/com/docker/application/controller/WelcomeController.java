package com.docker.application.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RestController;

import java.net.InetAddress;
import java.util.Map;

@RestController
public class WelcomeController {

    @GetMapping("/")
    public Map<String, String> welcome() throws Exception {

        String env = System.getenv().getOrDefault("ENV_VALUE", "No env set");
        String hostname = InetAddress.getLocalHost().getHostName();

        return Map.of("message", "Hello from Spring Application", "env", env, "container", hostname);
    }
}
