<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Spring Boot Cooikes</title>
    
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    
     <!-- Bootstrap CSS -->
        <link rel="preload" as="style" onload="this.onload=null;this.rel='stylesheet'"
            href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
            integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">
        <noscript>
            <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.0.0/dist/css/bootstrap.min.css"
                integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
                crossorigin="anonymous">
        </noscript>

</head>

<body>
     
    <br />

    <jsp:include page="header_menu.jsp" />

	
        <div class='container'>
            <div class="row">
                <div class="col-sm-6 offset-sm-3">
	
    
    <h2>Learn about Cookies by the link below and test with your Browser</h2>

Cookies by Servlet
<ul>

<li><a href="/create-servlet-cookie" target="_self">create cookie by servlet</a>

<li><a href="/all-servlet-cookies" target="_self">read cookie by servlet</a></li>

<li><a href="/delete-servlet-cookie" target="_self">delete cookie by servlet</a></li>

</ul>

Cookies by Spring
<ul>
	<li><a href="/create-spring-cookie" target="_self">create cookie by spring</a></li>

	<li><a href="/read-spring-cookie" target="_self">read cookie by spring</a></li>
	
	<li><a href="/delete-spring-cookie" target="_self">delete cookie by spring</a></li>

</ul>

</div></div></div>

</body>
</html>