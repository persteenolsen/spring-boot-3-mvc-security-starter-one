
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    
	<title>A Java Spring Boot MVC JSP JPA example</title>
	
	
</head>
<body>

	
<br />
<a href = "/hello" target="_top">Hello Page</a>
<br />


	<div class="container"  style="margin-left: 5pt">
      

      <c:if test="${not empty errorMessge}"><div style="color:red; font-weight: bold; margin: 30px 0px;">${errorMessge}</div></c:if>
 
      <form name='login' action="/login" method='POST'>
         
    <input type="hidden" name="{{_csrf.parameterName}}" value="{{_csrf.token}}"/>
         
           <div class="form-group">
            
                <label for="username">Username: (user)</label>
                <input class="form-control" type='text' name='username' value=''>
              
           </div>
              
          <div class="form-group">
              
             <label for="password">Password: (persteen1967)</label>
             <input class="form-control" type='password' name='password' />

          </div>

         
         <input class="btn btn-primary" name="submit" type="submit" value="Submit" />
           

      </form>

</body>
</html>