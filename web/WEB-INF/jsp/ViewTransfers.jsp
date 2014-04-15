<%-- 
    Document   : ViewTransfers
    Created on : Apr 14, 2014, 9:12:47 PM
    Author     : Chukk
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%@page import="java.* , edu.spcollege.TitianBank.domain.*" errorPage= "stderror.jsp" %>

<% Boolean loggedIn = (Boolean) session.getAttribute("userName");
    if (loggedIn == null || loggedIn.booleanValue() == false ) { 
        %>
        <jsp:forward page="index.jsp" />
        <%
    }
        %>
        
        
<%  String[] transactions = request.getParameterValues("getTransactions"); 
    String customerName = request.getParameter("customerName");%>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Transfers</title>
    </head>
    <body>
        <h1><%= customerName %></h1>
        <h2>Recent or pending transactions:</h2>
        <ul>
            <li><%= transactions %></li>
        </ul>
    </body>
</html>
