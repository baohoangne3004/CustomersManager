<%-- 
    Document   : index
    Created on : Apr 11, 2022, 2:44:04 PM
    Author     : Admin
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<!--
To change this license header, choose License Headers in Project Properties.
To change this template file, choose Tools | Templates
and open the template in the editor.
-->
<html>
    <head>
        <title>Customers search</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
    <body>
        <h1>Search customer information</h1>
        <form action="search" method="GET">
            Name: 
            <input type="text" name="searchData" value="" />
            <input type="submit" value="Search" />
        </form>
        <br/>
        <div>
            <c:if test="${customers != null}">
                <table border="1">
                    <thead>
                        <tr>
                            <th>Id</th>
                            <th>Name</th>
                            <th>Age</th>
                            <th>Address</th>
                        </tr>
                    </thead>
                    <tbody>
                    <c:forEach var="customer" items="${customers}">
                            ${customer}
                        </c:forEach>
                    </tbody>
                </table>
            </c:if>
        </div>
    </body>
</html>

