package com.example.jpa_multi_db;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.data.jpa.repository.config.EnableJpaAuditing;

@SpringBootApplication
@EnableJpaAuditing
public class JpaMultiDbApplication {

	public static void main(String[] args) {
		SpringApplication.run(JpaMultiDbApplication.class, args);
	}

}
