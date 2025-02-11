  # Spring Boot 3 MVC Security JSP JPA MySQL - Basic Starter

Last updated: 11-02-2025

- Works with Java 17

- Spring Boot 3

- Spring Security

- CSRF Protected

- Maven as build tool

- JSP

- Basic mobile friendly and css

- JPA

- MySQL

- CRUD functionality

- Learning about Spring Cookies - Take a look at SpringCookieController.java

- Learning about Servlet Cookies - Take a look at ServletCookieController.java

- A simple JSP file included with links for menu navigation

- DevTools with Hot Reload when developing 

- Download or fork the source code from GitHub

- Make sure that you have a MySQL Server online

- The Web Applications is prepared to be deployed to Azure App Service using Java 17 and Tomcat 10.1

# Create the file application.properties with the content below and place the file in the resources folder

spring.jpa.hibernate.ddl-auto=update

spring.datasource.url=jdbc:mysql:// the name of your mysql host / the name of your database

spring.datasource.username=your username 

spring.datasource.password=your password

spring.datasource.driver-class-name=com.mysql.cj.jdbc.Driver

spring.jpa.show-sql: true

spring.mvc.view.prefix=/WEB-INF/jsp/

spring.mvc.view.suffix=.jsp

# Run the Web Application locally by open a terminal in the folder of the Spring Boot Web App

- ./mvnw spring-boot:run 

Show the JSP:

http://localhost:8080

# Things yet to be done for improvements

- Add better CSS

- Add better BootStrap for being mobile friendly

- Improve the frontend validation

- Add backend validation at the User Model

# For learning about Spring Cookies try hit these public endpoints
 
- http://localhost:8080/create-spring-cookie

- http://localhost:8080/delete-spring-cookie

- http://localhost:8080/read-spring-cookie


# For learning about Servlet Cookies try hit these public endpoints

- http://localhost:8080/create-servlet-cookie

- http://localhost:8080/delete-servlet-cookie

- http://localhost:8080/all-servlet-cookies

Happy Cookie learning :-)



