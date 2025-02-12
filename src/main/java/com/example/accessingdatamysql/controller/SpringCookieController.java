package com.example.accessingdatamysql.controller;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.http.HttpHeaders;
import org.springframework.http.ResponseCookie;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.CookieValue;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class SpringCookieController {
	
	 @GetMapping("/create-spring-cookie")
	    
	 public ResponseEntity<String> setCookie() {
		 
		 ResponseCookie resCookie = ResponseCookie.from("user-id", "c2FtLnNtaXRoQGV4YW1wbGUuY29t")
		           
		            .httpOnly(true)
		            .secure(true)
		            .path("/")
		            .maxAge(1 * 24 * 60 * 60)
		            .domain("localhost")
		            .build();
            
			// Returning HTTP Header + Body
			return ResponseEntity.ok()
			.header(HttpHeaders.SET_COOKIE, resCookie.toString())
			.body("The Cookie: " + resCookie.getName() 
			      + " with value: " + resCookie.getValue() + " was created ..." );
            
			// Returning HTTP Header
	        //return ResponseEntity.ok().header(HttpHeaders.SET_COOKIE, resCookie.toString()).build();

	    }

	    @GetMapping("/delete-spring-cookie")
	    public ResponseEntity<String> deleteCookie() {

	        // create a cookie with the same propperties as the original cookie
			// and set the max age to 0 seconds !
	    	 ResponseCookie resCookie = ResponseCookie.from("user-id", null)
			
			 // May not be needed
			 .httpOnly(false)
			 .secure(false)
			 .path("/")

			 // This is where the "magic" happens and the cookie will expire after 0 seconds
			 // Note: If set to -1 the browser will handle the cookie as a session
			 .maxAge(0)
             
			 // May not be needed
			 .domain("localhost")

			 .build();
                        
			// Returning HTTP Header + Body
			return ResponseEntity.ok()
			      .header(HttpHeaders.SET_COOKIE, resCookie.toString())
				  .body("The Cookie: " + resCookie.getName() + " was deleted ...");
				 // .build();
	        
			// Returning HTTP Header
		    // return ResponseEntity.ok().header(HttpHeaders.SET_COOKIE, resCookie.toString()).build();

	    }
	    
	    @GetMapping("/read-spring-cookie")
	    public String readCookie(@CookieValue(name = "user-id", defaultValue = "default-user-id") String cookieName) {
	        
			return String.format("value of the cookie with name user-id is: %s", cookieName);
	    }

}