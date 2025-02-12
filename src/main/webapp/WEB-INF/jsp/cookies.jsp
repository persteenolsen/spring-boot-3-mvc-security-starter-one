<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Spring Boot Cooikes</title>

    
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    
    <style>
	   .body-content{font-size: 10pt;margin-left: 10pt; margin-right: 10pt; font-family: Verdana, sans-serif}
	</style>

</head>
<body class="body-content">

    <jsp:include page="header_menu.jsp" />
    
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

</body>
</html>