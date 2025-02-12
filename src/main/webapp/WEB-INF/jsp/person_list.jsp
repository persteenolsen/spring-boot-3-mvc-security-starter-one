<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%>  

     
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>


<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
     
  <title>The list of persons</title>
  
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    
    <style>
	   .body-content{font-size: 10pt;margin-left: 10pt; margin-right: 10pt; font-family: Verdana, sans-serif}
	</style>
  
</head>


<body class="body-content">
 
  <div>
    
    <jsp:include page="header_menu.jsp" />

    <h2>The List of Persons</h2>

    <table cellpadding="5" cellspacing="2">
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