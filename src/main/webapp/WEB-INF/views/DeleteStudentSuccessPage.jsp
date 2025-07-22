<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>
    
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Added Successfully</title>
    <style>
        body {
            font-family: 'Arial', sans-serif;
            background-color: #f4f4f9;
			
			 background-image: url('images/deletesuccess1.png'); 
			background-repeat: no-repeat; 
			background-size: cover; 
			background-position: center; 
			
            display: flex;
            justify-content: center;
            align-items: center;
            height: 100vh;
            margin: 0;
        }
        .container {
            text-align: center;
            background: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 8px rgba(0, 0, 0, 0.1);
            animation: fadeIn 1.5s ease-in-out;
        }
        h1 {
            color: #4CAF50;
            font-size: 2.5em;
            margin-bottom: 20px;
        }
        p {
            color: #333;
            font-size: 1.2em;
            margin-bottom: 30px;
        }
        .button {
            display: inline-block;
            padding: 10px 20px;
            font-size: 1em;
            color: white;
            background-color: #4CAF50;
            border: none;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }
        .button:hover {
            background-color: #45a049;
        }
        @keyframes fadeIn {
            from {
                opacity: 0;
                transform: translateY(-20px);
            }
            to {
                opacity: 1;
                transform: translateY(0);
            }
        }
    </style>
</head>
<body>
    <div class="container">
        <h1>Student Deleted  Successfully!</h1>
        <p>Thank you for submitting the student details.</p>
        <a href="index.html" class="button">Back to Homepage</a>
        <a href="DeleteStudent" class="button">Delete a New Student</a>
    </div>
</body>
</html>