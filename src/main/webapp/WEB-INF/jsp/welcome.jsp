<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

     
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<!DOCTYPE html>
<html>
<head>
    <title>Spring Boot Hello World</title>
</head>
<body>

  <sec:authorize access="isAuthenticated()">
    <a href="/logout">Logout</a>
  </sec:authorize>
  <sec:authorize access="!isAuthenticated()">
    <a href="/login">Login</a>
   </sec:authorize>

   <br /><br />
  
  <sec:authorize access="isAuthenticated()">
   Welcome <i><b><sec:authentication property="name"/></b></i> 
  - you are authorized to administrate the list of persons !</b>
  </sec:authorize>

<br /><br />
<a href="/demo/mvclistpersons" target="_top">View the Persons</a>

</body>
</html>