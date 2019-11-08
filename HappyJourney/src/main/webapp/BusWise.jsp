<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>

<body>
<form:form action="/" modelAttribute="Trip" method="POST">
                  
                    <table align="center">
                        <tr>
                            <td>

                                <form:select name="bus" path="fstation" id="busid">
             <c:forEach items="${Trip.SList}" var="user" varStatus="status">

    <option value="US">${user.fstation}</option>
    
    </c:forEach>
          </form:select>     
 
 


</tr>
</table>
</form:form>
</body>
</html>