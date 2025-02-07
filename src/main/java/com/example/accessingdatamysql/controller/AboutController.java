package com.example.accessingdatamysql.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

// Returning the JSP About View
@Controller
public class AboutController {
	@GetMapping("/about")
	public String about() {
		return "about";
	}
}