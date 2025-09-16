
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
    
   		
<!-- Bootstrap CSS -->
<link rel="preload" as="style" onload="this.onload=null;this.rel='stylesheet'"
    href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
    integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
<noscript>
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
        integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
</noscript>
		
</head>

<body>

   <br />
   
   <jsp:include page="header_menu.jsp" />

    
<div class='container'>
	 <div class="row">
            <div class="col-sm-6 offset-sm-3">

   <h2>Login here...</h2>
	<div>
      
      <c:if test="${not empty errorMessge}"><div style="color:red; font-weight: bold; margin: 5px 0px;">${errorMessge}</div></c:if>
      
      <br />

      <form name='login' action="/login" method='POST'>

        <input type="hidden" name="${_csrf.parameterName}" value="${_csrf.token}"/>
         
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

      </div>
      </div>
      </div>
</body>
</html>