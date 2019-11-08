 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    <%@page contentType="text/html" pageEncoding="UTF-8"%>
    
<html>
    <head>
     <script type="text/javascript" 
            src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js">
    </script>
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
select{
width:200px;
height:39px;
}
        </style>
        
        
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
   
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
<br></br>
        <br></br>
   <div align="center">
       <form:form action="/" modelAttribute="Trip" method="POST">
            
           
              <form:select path="regno">
  <c:forEach items="${Trip.RList}" var="user" varStatus="status">

    <option value="${user.regno}">${user.regno}</option>
    
    </c:forEach>
        </form:select>
          <form:button onclick="cal()" style="background-color:#0CADA0;width:90px;height:39px;" >submit</form:button>
        <br></br>
        <br></br>
        
          <table id="tab" BORDER="3" align="center">
              <tr>
                
                    <th width="15%"> Trip Id </th>
                    <th width="15%"> Booking Id </th>
                    <th width="15%"> From </th>
                    <th width="15%"> To </th>
                     <th width="20%"> Customer Name</th>
                    <th width="20%">Travelling Date</th>
                  </tr>
          </table>
          </form:form>
         </div>
       
               <script language="javascript">
                   function delRow() {
for(var hu=0;(document.getElementById("tab").rows.length)!=1;hu++){
document.getElementById("tab").deleteRow(1);
}
}
            function cal()
            {
               // alert("hie");
               delRow();
             var x1=document.getElementById("busid").value; 
             var t=document.getElementById("tab");
            //alert(x1);
            var req = new XMLHttpRequest();
            req.onreadystatechange = function(){    
            if(req.readyState=='4' && req.status=='200'){
         
            
            var j=JSON.parse(req.responseText);
            var k =1;
             for(var i=0;j[i]!=null;i++)
             {
             var row = t.insertRow(k);
             var cell1 = row.insertCell(0);
             var cell2 = row.insertCell(1);
             var cell3 = row.insertCell(2);
             var cell4 = row.insertCell(3);
             var cell5 = row.insertCell(4);
             var cell6 = row.insertCell(5);
           //  var cell7 = row.insertCell(4);

// Add some text to the new cells:
             
              var d = new Date( j[i].BOOK_TRDATE);
                var dd=d.getDate();
                var mm=d.getMonth()+1;
                var yy=d.getFullYear();
                
             cell1.innerHTML = j[i].BOOK_TRIP_ID;
             cell2.innerHTML = j[i].BOOK_ID;
          
            cell3.innerHTML = j[i].BOOK_FROM;
              cell4.innerHTML = j[i].BOOK_TO;
         cell5.innerHTML = j[i].CUST_ID;
            
              cell6.innerHTML =  dd+"-"+mm+"-"+yy;
          //  cell7.innerHTML = j[i].TRIP_COLLECTION;
            k++;
            }
         
         
            }           
            }
            req.open("GET","/bus/BusWise?hi="+x1,true);
            req.send();
            }
            
           /* function del()
            {
              `var t=document.getElementById("tab");
               var rows=t.getElementsByTagName("tr");
               var cnt=rows.length;
               for(var i=0;i<cnt-1;i++)
               {
               t.deleteRow(i);
               }
            }
            */
          
       
               
               </script>
          <p id="p"></p>
    </body>
</html>
