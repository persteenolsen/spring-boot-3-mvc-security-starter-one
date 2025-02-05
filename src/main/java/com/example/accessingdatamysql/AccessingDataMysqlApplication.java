package com.example.accessingdatamysql;

import org.springframework.boot.SpringApplication;
import org.springframework.boot.autoconfigure.SpringBootApplication;
import org.springframework.boot.builder.SpringApplicationBuilder;
// For deploy to Tomcat used with the "extends SpringBootServletInitializer"
import org.springframework.boot.web.servlet.support.*;

@SpringBootApplication
public class AccessingDataMysqlApplication extends SpringBootServletInitializer {

	public static void main(String[] args) {
		SpringApplication.run(AccessingDataMysqlApplication.class, args);
	}

	// Ready for builing a war file used for Tomcat at Azure
	@Override
	protected SpringApplicationBuilder configure(SpringApplicationBuilder application) {
		return application.sources(AccessingDataMysqlApplication.class);
	}
	
}
