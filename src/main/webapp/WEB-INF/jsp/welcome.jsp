<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

     
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<!DOCTYPE html>
<html>
<head>
    <title>Spring Boot Welcome</title>
    
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

  <br />
  
  <h2>Welcome to the "secret" section :-)</h2>

  </div></div></div>

</body>
</html>