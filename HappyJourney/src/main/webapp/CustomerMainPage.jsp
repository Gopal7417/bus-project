
<%@page contentType="text/html" pageEncoding="UTF-8"%>
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
    <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
    <head>
        <link rel="stylesheet" href="<c:url value="/resources/css/MainPage.css"/>"/>
<script type="text/javascript" src="MainPage.js"></script>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
       <title>Ticket Booking</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm"
        crossorigin="anonymous">

    <!-- User Defined Styles Start   -->

    <!-- User Defined Styles End   -->
<style> button{ 
        background-color:#0CADA0;
    }
    </style>
    
    
    
    
    		   <script type="text/javascript" 
            src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.2/jquery.min.js">
    </script>
	<script type="text/javascript">
      

        $(document).ready(function () {
			
			
   		 $('#gettrip').click(function(){
   			
        $.ajax({
                      type: "POST",
                      data:{ 
                    	  "from" : $("#fstation").val(),
                    	  "to" : $("#tstation").val(),
                    	 " date" :$("#bdate").val()                   	  
                      },
            			

                      url: "some",
                      dataType: 'json',
                      success: function(data){
                    	  $.each(data, function (index,value) {
                    	        $('#bustype').append($('<option>').val(value.BSTY_TITLE).text(value.BSTY_TITLE)); 
                    	    });
                  }
               });
   		 });});
        
  

</script>
    
    
    
    
    
    
    
</head>

     <body onload="loadstops()">
     <img src="<c:url value="/resources/images/bus logo.png"/>"align="right" width=20% height= 20%>
<br></br><br><br><br><br>
<div class="nav">
<ul>
<li><a href="CustomerMainPage">HOME</a>
<li><a href="CustomerMainPage" target="_self">PROFILE</a>
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



<br><br><br>
 
<form:form  modelAttribute="Trip">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
<div align="center">
<input type="button" style="background-color:#0CADA0;width:110px;height:40px; color:#FFFFFF;" value="FROM:" style="width: 150%; height: 150px;" style="text-size:100%;"/>
<form:select path="fstation" id="fstation" name="fstation" > 
                                  <c:forEach items="${Trip.SList}" var="user" varStatus="status">

    <option value="${user.fstanid}">${user.fstation}</option>
    
    </c:forEach>
      </form:select>


&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<input type="button" style=" color:#FFFFFF; background-color:#0CADA0;width:110px;
height:40px;" value="TO:">

<form:select  path="tstation" id="tstation" name="tstation">
                                                                 <c:forEach items="${Trip.SList}" var="user" varStatus="status">

    <option value="${user.tstanid}">${user.tstation}</option>
    
    </c:forEach>
    </form:select>

  
  
  

&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp&nbsp
<input type="Button" style=" color:#FFFFFF; background-color:#0CADA0;width:110px;
height:40px;" value="DATE:">
<form:input path="bdate" type="date" id="bdate" name="bdate" style="height:40px;"/>
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
</div>

<br><br>

<div align="center">
    <input type="button" id="gettrip" style="background-color:#0CADA0; color:#FFFFFF; width:110px;
height:40px;" align="center" value="SEARCH"/>

<br><br>

<input type="button" style="background-color:#0CADA0; color:#FFFFFF; width:110px;
height:40px;" value="TRIPS:" onchange="fare()"/>


<form:select path="bustype"  id="bustype" name="bustype" style="width:500px;
height:40px;">

</form:select>
</form:form>

</div>
<br><br>
    <div class="container" align="center">

        <div  class="table-responsive ">
            <table class="table passengers_table" >
                <thead>
                    <tr>
                        <td width="10%">S NO</td>
                        <td width="30%">Passenger Name</td>
                        <td width="10%">Age</td>
                        <td width="15%">Gender</td>
                      
                        <td width="15%"></td>
                    </tr>
                </thead>
                <tbody>

                </tbody>
                <tfoot>
                    <tr class="text-right">
                        <td colspan="5">
                            
                        </td>
                    </tr>
                </tfoot>
            </table>
        </div>

    </div>
<div style="margin-left:168px;">
<input type="button" style="background-color:#0CADA0; color:#FFFFFF; width:110px;
height:40px;" value="Total Amount:">
<input type="text" readOnly=true id="fare">
&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
    <input type="button" style="background-color:#0CADA0; color:#FFFFFF; width:110px;
height:40px;" value="Payment Type:">
<select name="mode" id="mode"><option>UPI</option><option>PAYTM</option><option>DEBIT CARD</option><option>NET BANKING</option></select>
</div>
<br>
<div align="center">
<button  align="center" class="btn btn-success book_ticket" style="background-color:#0CADA0;width:110px;
height:40px;">Book Ticket</button>
</div>

  
</body>


<!-- JQUERY, Popper & Boostrap Plugin Lib   -->
<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" ></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" ></script>




<script>  


    /*********************************************************************/
    /***********************  DOM Elements Start   ***********************/
    /*********************************************************************/


    $(document).ready(function () {
        addNewPassenger();
    })

    $(document).on('click', '.add_passenger', function () {
        addNewPassenger();
    })
    $(document).on('click', '.remove_passenger', function () {
        removePassenger($(this)
                
                
                
                
                
                
                
                );
    })
    $(document).on('click', '.book_ticket', function () {
        preparePassengersData();
      
    })

    function getPassengerUI() {

        var html = '<tr class="passengers">'
            + '     <td class="index"></td>'
            + '     <td><input type="text" class="form-control passenger_name" maxlength="100" placeholder="Enter Passenger Name"></td>'
            + '     <td><input type="number" class="form-control passenger_age"  placeholder="Enter Age"> </td>'
            + '     <td> <select class="form-control passenger_gender" onchange="fare()"><option value="">Select Gender</option>'
            + '             <option value="M">Male</option>'
            + '             <option value="F">Female</option>'
            + '             </select>'
            + '     </td>'
            + '     <td>'
            + '         <div class="passenger_action text-right">'
            + '             <button class="remove_passenger  btn btn-danger btn-sm"  >Remove</button>'
            + '             <button class="add_passenger btn btn-success btn-sm" >Add</button>'
            + '        </div>'
            + '    </td>'
            + '</tr>';

        return html;

    }

var k=0;
    // Add New Passenger details view
    function addNewPassenger() {
 k++;
 var passengerUI = getPassengerUI();
        $('.passengers_table tbody').append(passengerUI);
        refreshUI();

    }


    // Remove Existing Passenger details view
    function removePassenger(passengerElementRef) {
     k--;
        passengerElementRef.closest('tr').remove();
        refreshUI();
    }
   /* function send()
    {
        var from=document.getElementById("fr").value;
                var tos=document.getElementById("to").value;
                var r =document.getElementById("s").value;
                var far=document.getElementById("fare").value;
                var date=document.getElementById("da").value;
                var req = new XMLHttpRequest();
                req.onreadystatechange = function()
                {    
                    if(req.readyState=='4' && req.status=='200')
                    {
                      //alert(from+""+tos+""+r+","+date);
                      alert(far);
                    }
                }
                req.open("GET","/bus/ticketbooking?from="+from+"&t="+tos+"&i="+r+"&fare="+far+"&dat="+date,true);
                req.send(null);
}
    */
function fare(){
                //var e1 = xe.id;
               // var f1="Fare"+e1;
                //alert(f1);
                var from=document.getElementById("fr").value;
                var tos=document.getElementById("to").value;
                var r =document.getElementById("s").value;
                var req = new XMLHttpRequest();
                req.onreadystatechange = function()
                {    
                    if(req.readyState=='4' && req.status=='200')
                    {
                        var aa=req.responseText;
                      //  alert(aa);
                        //document.getElementById(f1).value=aa;
                        calTotal(aa);
                    }
                }
                req.open("GET","/bus/Farecal?f="+from+"&t="+tos+"&i="+r,true);
                req.send(null);
}
function calTotal(h){

//var j = document.getElementById(h).value;
Total=k*h;
//Total=parseInt(document.getElementById(fg).value)+parseInt(Total);

document.getElementById('fare').value =parseInt(Total);
}
    // function set S No
    function refreshUI() {

        $('.passengers_table tbody tr').each(function (passengerIndex, passengerData) {
            $(this).find('.index').text(passengerIndex + 1);
        })

        if ($('.passengers_table tbody tr').length == 1) {
            $('.remove_passenger').hide();
        } else {
            $('.remove_passenger').show();
        }

        $('.add_passenger:not(:last-child)').hide();


        $(".add_passenger").hide();
        $(".add_passenger").last().show();



    }



    // Prepare passengers JSON
    function preparePassengersData() {


        var passengersList = [];

        $('.passengers').each(function () {

            var passengerDetails = {

                "name": $(this).find('.passenger_name').val(),
                "age": $(this).find('.passenger_age').val(),
                "gender": $(this).find('.passenger_gender').val(),

            }

            passengersList.push(passengerDetails);


        })

        // Make an api call to book the tickets 
        //alert(JSON.stringify(passengersList));

        bookTickets(passengersList);
        
    }
    
    // Booking API call
    function bookTickets(passengersList){
                var from=document.getElementById("fr").value;
                var tos=document.getElementById("to").value;
                var r =document.getElementById("s").value;
                var far=document.getElementById("fare").value;
                var date=document.getElementById("da").value;
                var mode=document.getElementById("mode").value;
        $.ajax({
            url: "/bus/ticketbooking",
            type: 'GET',
            data: {
                from:from,
                tos:tos,
                r:r,
                far:far,
                date:date,
                mode:mode,
                Plist:JSON.stringify(passengersList)},
            success: function (successResponse, textStatus, jqXHR) {
                console.log(successResponse)
                window.location.replace("/bus/TicketBooked.jsp");
            },
           error: function (errorResponse, textStatus, errorThrown) {
                  console.log(errorResponse)
           }
       });
   }

function book()
{
    alert('ticket booked sucessfully');
}

</script>



 -->

<!-- User Defined Script End   -->


</html>