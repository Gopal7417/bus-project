  <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<html>
    <head>
        
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
   <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
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
h3{
    COLOR:#0CADA0;
    margin-top:20px;
    font-size:25px;
    margin-left:500px;
}
label{
    margin-left:500px;
    color:#0CADA0;
     margin-top:30px;
}
input{
    margin-top:30px;
}
table{
  margin-top:50px;
  text-align:center; 
}
input{
width:200px;
height:39px;
}
</style>
</head>
<body>
<img src="<c:url value="/resources/images/bus logo.png"/>" align="right" height=20% width=20% />
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

         <script>
             function delRow() {
for(var hu=0;(document.getElementById("tab").rows.length)!=1;hu++){
document.getElementById("tab").deleteRow(1);
}
}
            function myFunction() {
                delRow();
                var e=document.getElementById("myDate").value;
               var i;
               var k=1;
               
            var req=new XMLHttpRequest();
        req.onreadystatechange=function(){
             var t=document.getElementById("tab");
            
            if(req.readyState=='4'&&req.status=='200')
            {
           var j=JSON.parse(req.responseText);
               for(i=0;j[i]!=null;i++)
             {
             var row = t.insertRow(k);
             var cell1 = row.insertCell(0);
             var cell2 = row.insertCell(1);
             var cell3 = row.insertCell(2);
             var cell4 = row.insertCell(3);
             var cell5 = row.insertCell(4);
               var cell6 = row.insertCell(5);


                var d = new Date( j[i].BOOK_TRDATE);
                var dd=d.getDate();
                var mm=d.getMonth()+1;
                var yy=d.getFullYear();
               
                //pad(d.getMonth()+1), d.getFullYear();
    
// Add some text to the new cells:
             cell1.innerHTML = j[i].BOOK_TRIP_ID;
             cell2.innerHTML = j[i].BOOK_ID;
             cell3.innerHTML = j[i].BOOK_FROM;
             cell4.innerHTML = j[i].BOOK_TO;
             cell5.innerHTML = j[i].CUST_ID;
            // cell6.innerHTML =   j[i].BOOK_TRDATE;
               cell6.innerHTML =  dd+"-"+mm+"-"+yy;
            k++;
            }
            
            
                }
  
            }
       
        
        req.open("GET","/bus/BookingDateWise?date="+e,true);
        
        req.send(null);
            } 
        </script>
       <br><br>
        <label>Enter Date:</label>
        <input type="date" id="myDate"  align="center">
        <button onclick="myFunction()" align="center" style="background-color:#0CADA0;width:90px;
height:39px;" > Search</button>
       <table id="tab" BORDER="3" align="center">
              <tr>
                
                    <th width="15%"> Trip Id </th>
                    <th width="15%"> Booking Id </th>
                    <th width="15%"> From </th>
                    <th width="15%"> To </th>
                     <th width="20%"> Customer Name</th>
                      <th width="20%">Travelling date</th>


                  </tr>
          </table>
         
          <p id="demo"></p>
    </body>
</html>
