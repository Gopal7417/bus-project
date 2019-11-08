<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <style>
body{
margin:0;
background:#f2f2f2f;
}
.nav{
width:100%;
background:#0CADA0;
height:43px;

}
ul{
list-style:none;
padding:0;
margin:0;
position:absolute;

}
ul li{
float:left;

}
ul li a{
width:150px;
color:white;

display:block;
text-decoration:none;
font-size:18px;
text-align:center;
padding:10px;
font-family: Trebuchet MS;

}
a:hover{
 border-left: 1px solid white;
 border-right: 1px solid white;
}
ul li ul{
background:#808080;
}
ul li ul li{
float:none;
}

ul li ul{
display:none;
}
ul li:hover ul{
	display:block;
	
}
h1{
 color:#0CADA0;   
}
</style>
    </head>
    <body>
<img src="<c:url value="/resources/images/bus logo.png"/>"align="right" width=20% height= 20%>
<br></br><br><br><br><br>
<div class="nav">

<ul>
    <li><a href="AdminMainPage.jsp">PROFILE</a>
        <ul>
            <li><a href="AdminChangePswd.jsp" target="_self">Change Password</a></li>
            <li><a href="Logout.jsp" target="_self">Log Out</a></li>
        </ul></li>
<li><a href="AdminMainPage.jsp">TRIPS</a>
<ul>
<li><a href="CreateTrip.jsp" target="_self">Create Trips</a></li>
<li><a href="ViewTrips.jsp"  target="_self">View Trips</a></li>
<li><a href="canceltrip.jsp"  target="_self">Cancel Trips</a></li>
</ul></li>
<li><a href="Customers.jsp">CUSTOMERS</a></li>
<li><a href="AdminMainPage.jsp">BOOKINGS</a>
<ul>
<li><a href="TripWise.jsp" target="_self">Trip Wise</a></li>
<li><a href="BookingsDateWise.jsp" target="_self">Date Wise</a></li>
<li><a href="BUSWISE1.jsp" target="_self">Bus Wise</a></li>
<li><a href="Chart.jsp" target="_self">Chart</a></li>

</ul></li>

<li><a href="Cancellations.jsp">CANCELLATIONS</a></li>
</ul>
</div>
        <center>
        <h1>Cancellations</h1>
        <table border="1" align="center">
            <tr>
                 <th> Booking Id:</th>
                 <th>Travelling Date:</th>
                 <th>From:</th>
                 <th>To</th>
                 <th> Total Amount</th>
                   <th>Payment Mode</th>
                   <th>Status</th>
                   
                  
                   
            
        
        </TABLE>
          </center>    
    </body>
</html>
