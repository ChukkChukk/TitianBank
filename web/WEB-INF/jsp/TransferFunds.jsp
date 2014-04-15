<%-- 
    Document   : TransferFunds
    Created on : Apr 14, 2014, 7:19:51 PM
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
        
        
<%  String customerName = request.getParameter("customerName"); %>        
        
        
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Transfer Funds</title>
    </head>
        <h1>Customer Name:<%= customerName %></h1>
            <h2>To transfer money from your account fill out the form.</h2>
    <form name="transferForm" action="/TransferRequest.java" method="post"  >

        <table>
            <tr>    
                <td><label>From Account:</label></td>
                <td><label>Checking:</label>
                    <input type="radio" name="tranferFromChecking" value="source"><br>
                    <label>Savings:</label>
                    <input type="radio" name="transferFromSavings" value="source"></td>
            </tr>
            <tr>
                <td><label>To Account:</label></td>
                <td><label>Checking:</label>
                    <input type="radio" name="tranferToChecking" value="destination"><br>
                    <label>Savings:</label>
                    <input type="radio" name="transferToSavings" value="destination"></td>
            </tr>
            <tr>
                <td><label>Amount: $</label></td>
                <td><input type="text" name="amt" id="amt" size="12" /></td>
            </tr>
            <tr>
                <td><label>Date and time to transfer funds:</label></td>
                <td><input type="radio" name="whenTo" value="IMMEDIATELY">Immediately<br>
                    <input type="datetime" name="whenTo">Future</td>
            </tr>
            <tr>
                <td colspan="2"><input id="submitTransfer" name="submitTranfer" type="button" value="Submit" onsubmit="/TransferRequest.java"/>
                    <input id="transfer" name="transferFunds" type="submit" value="Transfer"/></td>			
            </tr>
        </table>
    </form>

        
    </body>
</html>
