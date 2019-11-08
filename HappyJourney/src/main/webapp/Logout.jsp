<%-- 
    Document   : logout
    Created on : 24 Sep, 2019, 10:56:45 AM
    Author     : pennantstaff
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <% 
            RequestDispatcher rd;
            HttpSession hs=request.getSession();
            String s;
            s=(String)hs.getAttribute("status");
            hs.setAttribute("status","null");
            // hs.setAttribute("","null");
            rd=request.getRequestDispatcher("/MainLogin.jsp");
             rd.forward(request,response);
            
           
                %>
    </body>
</html>
