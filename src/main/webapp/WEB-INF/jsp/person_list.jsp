<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>  

     
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
     
  <title>The list of persons</title>
  
</head>


<body>
 
  <div>
    
  <sec:authorize access="isAuthenticated()">
    <a href="/logout">Logout</a>
  </sec:authorize>
  <sec:authorize access="!isAuthenticated()">
    <a href="/login">Login</a>
   </sec:authorize>

   <br />
   <br />
  <a href="/welcome" target="_top">Welome Page</a>
  <br />
  <br />

  <table>
   <thead>
    <th scope="row">Name</th>
    <th scope="row">Email</th>
    
    <th scope="row">Update</th>
    <th scope="row">Delete</th>
   </thead>

   <tbody>
    <c:forEach items="${personList }" var="person" >
     <tr>
      <td>${person.name }</td>
      <td>${person.email }</td>
      
      <td>
       <spring:url value="/demo/mvcupdateperson/${person.id}" var="updateURL" />
       <a class="btn btn- btn-warning" href="${updateURL}" role="button" >Update</a>
      </td>
      <td>
       <spring:url value="/demo/mvcdeleteperson/${person.id}" var="deleteURL" />
       <a class="btn btn-danger" href="${deleteURL}" role="button" >Delete</a>
      </td>
     </tr>
    </c:forEach>
   </tbody>

  </table>

  <br />
  
  <spring:url value="/demo/mvccreateperson" var="addURL" />
  <a class="btn btn-primary" href="${addURL}" role="button" >Add New Person</a>
  
 </div>

</body>
</html>