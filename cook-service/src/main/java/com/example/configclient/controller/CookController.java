package com.example.configclient.controller;

import jakarta.annotation.PostConstruct;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.cloud.context.config.annotation.RefreshScope;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.net.InetAddress;
import java.net.UnknownHostException;
import java.util.Map;

@RestController
@RequestMapping("/")
@RefreshScope
public class CookController {


    @Value("${cook.count}")
    private int cookCount;

    @Value("${spring.profiles.active:}")
    private String activeProfile;

    private String hostName;

    @GetMapping
    public Map<String, Object> cook() {
        return Map.of("cookCount", cookCount, "activeProfile", activeProfile, "hostName", hostName);
    }

    @PostConstruct
    private void init() throws UnknownHostException {
        this.hostName = InetAddress.getLocalHost().getHostName();
    }

}