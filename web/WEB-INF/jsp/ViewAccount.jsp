<%-- 
    Document   : ViewAccount
    Created on : Apr 14, 2014, 4:55:00 PM
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

<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>View Account</title>
    </head>
    <body>
         <% String customerName = request.getParameter("customerName");
            String[] checkingAccount = request.getParameterValues("checkingAccount");
            String[] savingsAccount = request.getParameterValues("savingsAccount");
            
        %>
        <table cellspacing="5" cellpadding="5" border="1">
            <tr>
                <td align="right">Customer Name:</td>
                <td><%= customerName %></td>
            </tr>
            <tr>
                <td align="right">Checking Account Balance:</td>
                <td>$<%= checkingAccount %></td>
            </tr>
             <tr>
                <td align="right">Savings Account Balance:</td>
                <td>$<%= savingsAccount %></td>
            </tr>
        </table>
                
    </body>
</html>
