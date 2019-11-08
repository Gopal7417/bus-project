
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
 <link rel="stylesheet" href="<c:url value="/resources/css/MainPage.css"/>"/>
           <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
        crossorigin="anonymous">
    </head>
    <body>
        <img src="<c:url value="/resources/images/bus logo.png"/>"align="right" width=20% height= 20%>
<br></br><br><br><br><br>
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
<br></br>
</div>
 <br></br><br></br>
        <table border="1" align="center">
            <tr>
                 <th> Booking Id</th>
                 <th>Travelling Date</th>
                 <th>From</th>
                 <th>To</th>
                 <th> Total Amount</th>
                   <th>Payment Mode</th>
                   <th>Status</th>
                   
                   <th colspan="3">passengers list</th>
                   
         
                
                </table>
                </td>
               
              
                 
        </TABLE>
      
      
    </body>
    <script>
     function del(x)
     {
         var ti=x.value;
        //var hi=document.getElementById("b").value;
          var req = new XMLHttpRequest();
         // alert(ti);
            req.onreadystatechange = function(){    
            if(req.readyState=='4' && req.status=='200'){
                location.replace("upcoming.jsp");
            }
        }
        req.open("GET","/bus/CancelTiickets.jsp?b="+ti, true);
            req.send();
            
     }
     
     
     </script>
</html>




