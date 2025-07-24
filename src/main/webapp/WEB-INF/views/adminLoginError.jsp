<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Admin Login Error</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            background: linear-gradient(135deg, #f8d7da 0%, #ffeeba 100%); /* Soft red/yellow gradient */
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .error-card {
            background: rgba(255, 255, 255, 0.98);
            padding: 50px;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.15);
            width: 100%;
            max-width: 500px;
            text-align: center;
            animation: fadeIn 0.8s ease-out;
            position: relative;
            overflow: hidden;
        }
        .error-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 5px;
            background: linear-gradient(90deg, #dc3545, #fd7e14); /* Red/Orange gradient top border */
        }
        .error-icon {
            font-size: 4em;
            color: #dc3545; /* Red warning icon */
            margin-bottom: 25px;
            animation: shake 0.5s;
            animation-iteration-count: 2;
        }
        h2 {
            color: #dc3545;
            margin-bottom: 20px;
            font-weight: 700;
        }
        p {
            font-size: 1.1em;
            color: #495057;
            margin-bottom: 30px;
        }
        .btn-back-login {
            background-color: #007bff;
            border-color: #007bff;
            padding: 12px 25px;
            border-radius: 8px;
            font-weight: 600;
            font-size: 1.1em;
            margin-top: 20px;
            transition: all 0.3s ease;
            box-shadow: 0 4px 10px rgba(0, 123, 255, 0.3);
            text-decoration: none;
            color: white;
        }
        .btn-back-login:hover {
            background-color: #0056b3;
            border-color: #0056b3;
            transform: translateY(-2px);
            box-shadow: 0 6px 15px rgba(0, 123, 255, 0.4);
            color: white;
        }
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }
        @keyframes shake {
            0% { transform: translateX(0); }
            25% { transform: translateX(-5px); }
            50% { transform: translateX(5px); }
            75% { transform: translateX(-5px); }
            100% { transform: translateX(0); }
        }
    </style>
</head>
<body>
    <div class="error-card">
        <i class="fas fa-exclamation-triangle error-icon"></i>
        <h2>Login Failed!</h2>
        <p>${msg}</p>
        <p>Please ensure you are using the correct credentials for Admin access.</p>
        
        <a href="login1" class="btn btn-back-login">
            <i class="fas fa-sign-in-alt me-2"></i>Back to Login
        </a>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/js/all.min.js"></script>
</body>
</html>