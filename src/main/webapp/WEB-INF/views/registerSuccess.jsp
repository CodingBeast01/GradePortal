<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Registration Successful</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            background: linear-gradient(135deg, #d4edda 0%, #cce5ff 100%); /* Soft gradient */
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .success-card {
            background: rgba(255, 255, 255, 0.98);
            padding: 50px;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.15);
            width: 100%;
            max-width: 500px;
            text-align: center;
            animation: fadeIn 0.8s ease-out;
            position: relative; /* For the top border */
            overflow: hidden;
        }
        .success-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 5px;
            background: linear-gradient(90deg, #28a745, #218838); /* Green gradient top border */
        }
        .success-icon {
            font-size: 4em;
            color: #28a745; /* Green checkmark */
            margin-bottom: 25px;
            animation: bounceIn 1s ease-out;
        }
        h2 {
            color: #28a745;
            margin-bottom: 20px;
            font-weight: 700;
        }
        p {
            font-size: 1.1em;
            color: #495057;
            margin-bottom: 15px;
        }
        .btn-login {
            background-color: #007bff;
            border-color: #007bff;
            padding: 12px 25px;
            border-radius: 8px;
            font-weight: 600;
            font-size: 1.1em;
            margin-top: 30px;
            transition: all 0.3s ease;
            box-shadow: 0 4px 10px rgba(0, 123, 255, 0.3);
            text-decoration: none; /* Ensure it looks like a button */
            color: white; /* Ensure text is white */
        }
        .btn-login:hover {
            background-color: #0056b3;
            border-color: #0056b3;
            transform: translateY(-2px);
            box-shadow: 0 6px 15px rgba(0, 123, 255, 0.4);
            color: white; /* Keep text white on hover */
        }
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }
        @keyframes bounceIn {
            0% { transform: scale(0.3); opacity: 0; }
            50% { transform: scale(1.1); opacity: 1; }
            70% { transform: scale(0.9); }
            100% { transform: scale(1); }
        }
    </style>
</head>
<body>
    <div class="success-card">
        <i class="fas fa-check-circle success-icon"></i>
        <h2>Registration Successful!</h2>
        <p>Welcome, <strong>${user.userName}</strong>!</p>
        <p>Your account has been created successfully with email: <strong>${user.email}</strong>.</p>
        <p>You can now proceed to log in.</p>
        <%-- Removed: Displaying password for security reasons --%>
        
        <a href="login1" class="btn btn-login">
            <i class="fas fa-sign-in-alt me-2"></i>Go to Login Page
        </a>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/js/all.min.js"></script>
</body>
</html>