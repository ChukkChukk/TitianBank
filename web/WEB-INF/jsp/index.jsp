<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN"
    "http://www.w3.org/TR/html4/loose.dtd">
<%@page errorPage= "stderror.jsp" %>
<html>
    <head>
        <title>User Login Page</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
    </head>
        <body>
            <div>
            <h1>Welcome to Titian Bank</h1>    
            <h2>Please log in:</h2>
            <br><br>
                <form action="UserLoginServlet" method="post">
                    <p><strong>Please Enter Your User Name: </strong>
                    <input type="text" name="userName" size="25">
                    <p><p><strong>Please Enter Your Password: </strong>
                    <input type="password" size="15" name="password">
                    <p><p>
                    <input type="submit" value="Submit">
                    <input type="reset" value="Reset">
                </form>
            </div>
        </body>
</html>
