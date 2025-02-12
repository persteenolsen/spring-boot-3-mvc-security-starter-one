package com.example.accessingdatamysql.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

// Returning the JSP Cookie View
@Controller
public class CookiesController {
	@GetMapping("/cookies")
	public String cookies() {
		return "cookies";
	}
}