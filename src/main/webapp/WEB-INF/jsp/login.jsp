
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
pageEncoding="ISO-8859-1"%>

<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    
	<title>A Java Spring Boot MVC JSP JPA example</title>
   
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    
    <style>
	   .body-content{font-size: 10pt;margin-left: 10pt; margin-right: 10pt; font-family: Verdana, sans-serif}
	</style>
		
</head>
<body class="body-content">

   <jsp:include page="header_menu.jsp" />

   <h2>Login here...</h2>
	<div>
      
      <c:if test="${not empty errorMessge}"><div style="color:red; font-weight: bold; margin: 5px 0px;">${errorMessge}</div></c:if>
      
      <br />

      <form name='login' action="/login" method='POST'>

        <input type="hidden" name="{{_csrf.parameterName}}" value="{{_csrf.token}}"/>
         
           <div class="form-group">
            
                <label for="username">Username: (user)</label><br />
                <input class="form-control" type='text' name='username' value=''>
              
           </div>
              
           <br />

          <div class="form-group">
              
             <label for="password">Password: (persteen1967)</label><br />
             <input class="form-control" type='password' name='password' />

          </div>

         <br />
         
         <input class="btn btn-primary" name="submit" type="submit" value="Submit" />
           

      </form>

</body>
</html>