<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <script type="text/javascript" src="amin.js">

        </script>



 <link rel="stylesheet" href="<c:url value="/resources/css/style.css"/>"/>    </head>
    <body onload="Namesload();FromTo()">
        
<img src="<c:url value="/resources/images/bus logo.png"/>"align="right" width=20% height= 20%>
        <br></br><br><br><br><br>
       <div class="nav">

<ul>
    <li><a href="AdminMainPage.jsp">PROFILE</a>
        <ul>
            <li><a href="AdminChangePswd.jsp" target="_self">Change Password</a></li>
            <li><a href="Logout.jsp" target="_self">Log Out</a></li>
        </ul></li>
<li><a href="AdminMainPage">TRIPS</a>
<ul>
<li><a href="CreateTrip" target="_self">Create Trips</a></li>
<li><a href="ViewTrips"  target="_self">View Trips</a></li>
<li><a href="canceltrip"  target="_self">Cancel Trips</a></li>
</ul></li>
<li><a href="Customers">CUSTOMERS</a></li>
<li><a href="AdminMainPage">BOOKINGS</a>
<ul>
<li><a href="TripWise" target="_self">Trip Wise</a></li>
<li><a href="BookingsDateWise" target="_self">Date Wise</a></li>
<li><a href="BUSWISE1" target="_self">Bus Wise</a></li>
<li><a href="Chart" target="_self">Chart</a></li>

</ul></li>

<li><a href="Cancellations.jsp">CANCELLATIONS</a></li>
</ul>
</div>
        <br><br>
        <h3>Create a trip<h3>
                 <form:form action="/" modelAttribute="Trip" method="POST">
                  
                    <table align="center">
                        <tr>
                            <td>

                                <form:label path="bustype" class="l" style="font-family:Trebuchet MS;">Buses:&nbsp&nbsp&nbsp</form:label><br>

                                 <form:select path="bustype" >
  <c:forEach items="${Trip.BList}" var="user" varStatus="status">

    <option value="${user.bustypeId}">${user.bustype}</option>
    
    </c:forEach>
 
</form:select>
                                 
							</td>
                                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            <td>
                                <form:label path="regno" class="l" style="font-family: Trebuchet MS;">Bus Type:&nbsp&nbsp&nbsp</form:label><br>

                                <form:select path="regno" id ="sBname"  name="sBname" style="width:250px;">
                                </form:select> 


                                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
							</td>
                            <td>
                                <form:label path="fstation" class="l" style="font-family: Trebuchet MS;">From Stations:&nbsp&nbsp&nbsp</form:label><br>
                                  <form:select path="fstation" id="sFrom" name="sFrom" > 
                                  <c:forEach items="${Trip.SList}" var="user" varStatus="status">

    <option value="${user.fstanid}">${user.fstation}</option>
    
    </c:forEach>
                                               
                                                                 
                                   </form:select>
                                &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
                            </td>
                            <td>
                                <form:label  path="tstation" class="l" style="font-family: Trebuchet MS;">To Stations:&nbsp&nbsp&nbsp</form:label><br>
                                <form:select  path="tstation" id="sTo" name="sTo" onchange="addRow()">
                                                                 <c:forEach items="${Trip.SList}" var="user" varStatus="status">

    <option value="${user.tstanid}">${user.tstation}</option>
    
    </c:forEach>
                                
                                </form:select>
                      
								                      
                        </tr>
                        <tr>

                        </tr> 
                    </table>
                    <br>

<p class="blocktext"  id="desc"></p>

                    <br></br>


                     <%-- <table id="myTable" align="center" >
                        <tr>
                            <th> Sno</th>
                            <th> Station</th>
                            <th>Index</th>
                            <th>Time</th>
                        </tr>  
                    </table>

                    <br><br><br>
       


                  <table align="center">
                        <tr>
                            <td>From Date <form:input name ="Fdate" type="date"/> &nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp</td>
                            <td>To Date<form:input name ="Tdate" type="date"/></td>
                        </tr>
                    </table>
                    <br><br>
                 <form:input type="hidden" name="myField" id="myField" value="" />
                    <table align="center">
                        <tr>
                            <td><form:input style="background-color:#0CADA0;width:110px;height:40px; color:#FFFFFF;"  type="submit" value="Create" onclick="fun()"/></td>
                            
                        </tr>
                    </table> --%>

                </form:form>
                </body>
                </html>

