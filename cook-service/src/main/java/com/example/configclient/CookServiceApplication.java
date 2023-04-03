package com.example.configclient;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.cloud.client.discovery.EnableDiscoveryClient;

@SpringBootApplication
@EnableDiscoveryClient
public class CookServiceApplication {

	public static void main(String[] args) {
		SpringApplication.run(CookServiceApplication.class, args);
	}

}
