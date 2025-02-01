  # Spring Boot 3 MVC Security JSP JPA MySQL - Basic Starter

Last updated: 01-02-2025

- Works with Java 17

- Spring Boot 3

- JSP

- JPA

- MySQL

- Download or fork the source code from GitHub

- Make sure that you have a MySQL Server online

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

Get All the Data by JSON :

- Login

- Open: http://localhost:8080/demo/all

Add a new record to the MySQL:

- Login

- Run the Web App locally at 8080

- Open command Promt and run: curl http://localhost:8080/demo/add -d name=Second -d email=test@test.com

# Things yet to be done for improvements

- Create a Service Folder acording to the MVC patterns
- Prepare the Web Applications to be deployed to Azure App Service using Java 17 and Tomcat 10.1
