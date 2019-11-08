
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="<c:url value="/resources/css/MainPage.css"/>"/>
        <title>JSP Page</title>
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
        crossorigin="anonymous">

    <!-- User Defined Styles Start   -->

    <!-- User Defined Styles End   -->
<style>
    p {
  
   font-weight: bold;
   font-family: Trebuchet MS;
       color:#808080;
  
}
    </style>
</head>

     <body>
 <img src="<c:url value="/resources/images/bus logo.png"/>"align="right" width=20% height= 20%>
<br></br><br><br>
<div class="nav">
<ul>
i><a href="CustomerMainPage" target="_self">PROFILE</a>
<ul>
<li><a href="CustomerChangePswd" target="_self">Change Password</a></li>
<li><a href="Logou" target="_self">Logout</a></li>

</ul>
<li><a href="CustomerMainPage">MY BOOKINGS</a>
<ul>
<li><a href="upcoming" target="_self">Upcoming Trips</a></li>
<li><a href="CompletedTrips" target="_self">Completed Trips</a></li>


</ul></li>
</div>
        
       <br> <br><br>        
   <div align ="center">
       
                <form>
                    <p>Old Password:<input type="password" name="pwd"> 
                        <br><br>
                    <p>New Password: <input type="password" name="npwd"></p>
                           <br><br>
                    <p><input type="submit" name="submit"style="background-color:#0CADA0;width:110px;
height:40px;" value="Enter"></p>
                </form>
    </div>
               
            
    </body>
</html>
