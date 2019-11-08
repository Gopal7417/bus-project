<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
 <html>
<head>
<title>
Register login
</title>
<script>


</script>
 <link rel="stylesheet" href="<c:url value="/resources/css/mainlogin.css"/>"/></head>
<body background="<c:url value="/resources/images/city11.jpg"/>"/>
<img src="<c:url value="/resources/images/bus logo.png"/>"align="right" width=20% height= 20%>

<div class="rectangle">
<div>
<h1>Register</h1>  
</div>
<form:form id="regForm" modelAttribute="reg" action="registerProcess" method="post">

   <form:label path="name" > UserName: </form:label><br><br>
    <form:input path="name" name="name" id="name" />                
  
  <br><br>
 
 <form:label path="psd" >Password:</form:label><br><br>
<form:password path="psd" name="psd" id="psd" />
 <form:label path="cpsd" >Password:</form:label><br><br>
<form:password path="cpsd" name="cpsd" id="cpsd" />

<form:button>Register</form:button>
</form:form>

</div>

</body>


</html>

 