package com.example.accessingdatamysql.config;

import org.springframework.context.annotation.Bean;
import org.springframework.context.annotation.Configuration;

import org.springframework.security.config.annotation.web.builders.HttpSecurity;
import org.springframework.security.config.annotation.web.configuration.EnableWebSecurity;
import org.springframework.security.core.userdetails.User;

import org.springframework.security.core.userdetails.UserDetailsService;
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.security.provisioning.InMemoryUserDetailsManager;
import org.springframework.security.web.SecurityFilterChain;
import org.springframework.security.web.authentication.logout.CookieClearingLogoutHandler;
import org.springframework.security.web.csrf.CsrfTokenRepository;
import org.springframework.security.web.csrf.HttpSessionCsrfTokenRepository;


@Configuration
@EnableWebSecurity
public class WebSecurityConfig {
  
   // Note: This is the password persteen1967 bcrypted 
   private String ENCODED_PASSWORD = "$2a$10$BU4mPFHW8stXWMVH8clcZ.yZ7wl54oJq.f0Lu2HnUK6.WdooEoTZ2";
       
	// Configure the CSRF token repository for protection against CSRF Attacks
	private CsrfTokenRepository csrfTokenRepository() {

        // Create a new HttpSessionCsrfTokenRepository
        HttpSessionCsrfTokenRepository repository = new HttpSessionCsrfTokenRepository();

        // Set the session attribute name for the CSRF token in a hidden input auto created
	    // Note: Take a look in login form by html source 
        repository.setSessionAttributeName("_csrf");

        // Return the repository
        return repository;
    }


   @Bean
   public PasswordEncoder passwordEncoder() {
       return new BCryptPasswordEncoder();
   }

@Bean
public UserDetailsService userDetailsService(PasswordEncoder encoder) {

    InMemoryUserDetailsManager manager = new InMemoryUserDetailsManager();

    manager.createUser(User.withUsername("user")

       // Note: The User will be granted by typing persteen1967 in the login form because 
	   // here the password persteen1967 is already coded by bcrypt and match
	   //.password(ENCODED_PASSWORD)

	  // Note: The User will be granted by typing persteen1967 in the login form because 
	  // here the password persteen1967 will be coded by bcrypt below and match
      .password(encoder.encode("persteen1967"))

      .roles("USER")
      .build());

    manager.createUser(User.withUsername("admin")
       
	   // Note: The User will be granted by typing persteen1967 in the login form because 
	   // here the password persteen1967 is already coded by bcrypt and match
	   .password(ENCODED_PASSWORD)
	   
	   // Note: The User will be granted by typing persteen1967 in the login form because 
	   // here the password persteen1967 will be coded by bcrypt below and match
	   //.password(encoder.encode("persteen1967"))

      .roles("USER", "ADMIN")
      .build());
    return manager;
}

   @Bean
	public SecurityFilterChain securityFilterChain(HttpSecurity http) throws Exception {
		
		// Note: This is just a TEST
		// The Session Cookie will still be present, because even after a Logout, it will be created
		// by Spring but with a new value :-)
		CookieClearingLogoutHandler cookies = new CookieClearingLogoutHandler("JSESSIONID");

		http
		    
		    // To protect against CSRF Attacks
			.csrf((csrf) -> csrf

			// Make a call for create a csrf and set it in a auto generated hidden input 
			.csrfTokenRepository(csrfTokenRepository()))
		   
			// Note: This will disable the csrf !!!
			//.csrf(csrf -> csrf.disable())  
		   
			.authorizeHttpRequests((requests) -> requests
			
				.requestMatchers("/", 
				"/hello",
				"/about", 
								
				// Note: Spring Cookie - Just for testing Cookies 
				"/create-spring-cookie",
				"/delete-spring-cookie",
				"/read-spring-cookie",

				// Note: Servlet Cookie - Just for testing Cookies 
				"/create-servlet-cookie",
				"/delete-servlet-cookie",
				"/all-servlet-cookies",
                
				// Note: For testing only
				//"/demo/mvclistpersons/**", 
				//"/demo/mvcdeleteperson/**",
				//"/demo/mvcupdateperson/**",  
				//"/demo/mvccreateperson",
				"/WEB-INF/**").permitAll()
				
				.anyRequest().authenticated()
			)
			.formLogin((form) -> form
				
			    // Disable this to use the Default Spring Security Login Page
			    .loginPage("/login")

				.defaultSuccessUrl("/welcome")
				
				.failureUrl("/login?error=true")

				.permitAll()
			)
			.logout((logout) -> 
			         
			        // Note: This is just a TEST
		            // The Session Cookie will still be present, because even after a Logout, 
					// it will be created by Spring but with a new value :-)
					logout.addLogoutHandler(cookies)
			        
					// Note: Not needed
					//logout.deleteCookies("JSESSIONID")
			  
			       .permitAll()
			);			

		return http.build(); 


	}



}
