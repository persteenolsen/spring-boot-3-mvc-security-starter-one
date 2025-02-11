package com.example.accessingdatamysql.utils;

import java.util.Arrays;
import java.util.Optional;

import jakarta.servlet.http.Cookie;
import jakarta.servlet.http.HttpServletRequest;

// Used for testing the Servlet Cookies by ServletCookieController
public class CookieUtil {
	
    // Creating a Cookie
	public static Cookie createCookie(String name, String value, int expiry, boolean isSecure, boolean httpOnly, String path, String domain ) {
		
        Cookie cookie = new Cookie(name, value);
		cookie.setMaxAge(expiry);
        cookie.setSecure(true);
        cookie.setHttpOnly(httpOnly);
        cookie.setPath(path); 
        cookie.setDomain(domain);
        return cookie;
        	}
	
    // Reading the Cookies
	public static Optional<String> readCookie(HttpServletRequest request, String name) {
        
        return Arrays.stream(request.getCookies())
          .filter(cookie -> name.equals(cookie.getName()))
          .map(Cookie::getValue)
          .findAny();
    }

}
