<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Registration Succesfull</title>
</head>
<body>
     <h1>Welcome, ${user.userName }</h1>
     <h1>Your Email Address is ${user.email }</h1>
     <h3>Your password is - ${user.password } Try to secure the password</h3>
     <a href="login">Click here to go to Login Page</a>
</body>
</html>