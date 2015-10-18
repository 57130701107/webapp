<%-- 
    Document   : ListCustomer
    Created on : Oct 18, 2015, 1:59:15 PM
    Author     : Student Lab
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Customer Listing::</h1>
        <form action="SearchCustomer" method="post">
            Search by name :
            <input type="text" name="custName" value="${param.custName}" />
            <input type="submit" value="<<search>>" />
        </form>
            
            <table>
                <tr>
                    <td>ID</td>
                    <td>Name</td>
                    <td>Email</td>
                    <td>Credit</td>
                </tr>
                <c:forEach items="${customers}" var="c">
                   <tr>
                    <td>${c.customerId}</td>
                    <td>${c.name}</td>
                    <td>${c.email}</td>
                    <td>${c.creditLimit}</td>
                    </tr>  
                </c:forEach>
            </table>
            <p style="color: red">${messages}</p>
            
    </body>
</html>
