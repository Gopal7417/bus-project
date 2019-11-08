<
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
<link rel="stylesheet" href="<c:url value="/resources/css/Admin.css"/>"/>    </head>
 <body background="<c:url value="/resources/images/city11.jpg"/>"/>
<img src="<c:url value="/resources/images/bus logo.png"/>"align="right" width=20% height= 20%>
<div class="rectangle">
<div>
<h1>Welcome Admin</h1>  
</div>

     <form:form id="adminloginForm" modelAttribute="alogin" action="AdminMainPage" method="post"  onsubmit="validateForm()" >

   <form:label path="name" align="left"> Username: </form:label><br><br>
    <form:input path="name" name="name" id="name" />                
  
  <br><br>
 
 <form:label path="psd" >Password:</form:label><br><br>
<form:password path="psd" name="psd" id="psd" />
   <br><br>
    <p id="h"></p>
   <form:button id="login" name="login">Login</form:button>


</form:form></div>
<script>

function validateForm(){
var x=document.forms.mine.username.value;
var y=document.forms.mine.password.value;
if(x==""||y=="")
{
document.getElementById('h').innerHTML="enter your username or password";
return false;
}

}
</script>

</body>
</html>
