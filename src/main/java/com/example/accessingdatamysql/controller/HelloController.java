package com.example.accessingdatamysql.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

// Returning the JSP hello View
@Controller
public class HelloController {
	@GetMapping({"/", "/hello"})
	public String hello() {
		return "hello";
	}
}