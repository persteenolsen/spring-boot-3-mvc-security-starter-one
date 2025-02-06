<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.springframework.org/tags" prefix="spring"%> 
<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%> 

     
<%@ taglib prefix="sec" uri="http://www.springframework.org/security/tags" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

    <title>Person Form</title>

    
	<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
	<meta name="viewport" content="width=device-width, initial-scale=1">
    
    <style>
	   .body-content{font-size: 10pt;margin-left: 10pt; margin-right: 10pt; font-family: Verdana, sans-serif}
	</style>
  
</head>
<body class="body-content">

    <jsp:include page="header_menu.jsp" />

 <div>

  <spring:url value="/demo/mvcsaveperson" var="saveURL" />

  <h2>Person</h2>

  <form:form modelAttribute="personForm" method="post" action="${saveURL}" cssClass="form" >
   <form:hidden path="id"/>

   <div class="form-group">
    <label>Name</label>
    <form:input path="name" cssClass="form-control" id="name" />
    <form:errors path="name" class="displayerros"  />

   </div>
   
   <br />
   
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