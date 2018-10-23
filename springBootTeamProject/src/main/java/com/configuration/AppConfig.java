package com.configuration;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.autoconfigure.domain.EntityScan;
import org.springframework.data.jpa.repository.config.EnableJpaRepositories;

@SpringBootApplication(scanBasePackages={"com"})
@EntityScan("com.model")
@EnableJpaRepositories("com.daoInterface")
public class AppConfig {

	public static void main(String[] args) {
		System.out.println("main starts.....");
		SpringApplication.run(AppConfig.class , args);
		System.out.println("main ends.......");
	}
	
}
