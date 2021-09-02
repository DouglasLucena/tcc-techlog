package com.techlog.techlog;

import javax.ws.rs.client.ClientBuilder;
import javax.ws.rs.client.WebTarget;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.context.annotation.Bean;

@SpringBootApplication
public class TechlogApplication {
	
	public final static String PATH_API_BASE = "";

	public static void main(String[] args) {
		SpringApplication.run(TechlogApplication.class, args);
	}

	@Bean
	public WebTarget webTarget() {
		return ClientBuilder.newClient().target(PATH_API_BASE);
	}
}
