<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 

     
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <title>Person Form</title>

  
</head>
<body>

    
    <sec:authorize access="isAuthenticated()">
        <a href="/logout">Logout</a>
      </sec:authorize>
      <sec:authorize access="!isAuthenticated()">
        <a href="/login">Login</a>
       </sec:authorize>
    
       <br /><br />
      <a href="/welcome" target="_top">Welome Page</a>
      <br /><br />
      <a href="/demo/mvclistpersons" target="_top">Show Persons</a>
      <br />

 <div class="container"  style="margin-left: 5pt">
  <spring:url value="/demo/mvcsaveperson" var="saveURL" />
  <h2>Person</h2>

  <form:form modelAttribute="personForm" method="post" action="${saveURL}" cssClass="form" >
   <form:hidden path="id"/>

   <div class="form-group">
    <label>Name</label>
    <form:input path="name" cssClass="form-control" id="name" />
    <form:errors path="name" class="displayerros"  />

   </div>

   <div class="form-group">
    <label>Email</label>
    <form:input path="email" cssClass="form-control" id="email" />
    <form:errors path="email" class="displayerros" />

   </div>
   
   <br />
   <button type="submit" class="btn btn-primary" >Save</button>
   
  </form:form>
  
 </div>
</body>
</html>