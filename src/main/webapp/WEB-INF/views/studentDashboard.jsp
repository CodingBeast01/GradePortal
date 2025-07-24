<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Dashboard</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            background: linear-gradient(135deg, #e0f2f7 0%, #c8e6c9 100%); /* Softer background */
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            text-align: center;
        }
        .dashboard-card {
            background: rgba(255, 255, 255, 0.95);
            padding: 50px;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.15);
            max-width: 600px;
            width: 100%;
            animation: fadeIn 0.8s ease-out;
        }
        h2 {
            color: #1a73e8; /* Google Blue */
            margin-bottom: 30px;
            font-weight: 700;
        }
        p {
            font-size: 1.1em;
            color: #5f6368; /* Google Grey */
            margin-bottom: 25px;
        }
        .form-group {
            margin-bottom: 25px;
        }
        .form-label {
            font-weight: 600;
            color: #3c4043;
            display: block;
            margin-bottom: 8px;
            text-align: left;
        }
        .form-control {
            border-radius: 8px;
            padding: 12px 15px;
            border: 1px solid #dadce0;
            transition: all 0.3s ease;
        }
        .form-control:focus {
            border-color: #1a73e8;
            box-shadow: 0 0 0 0.25rem rgba(26, 115, 232, 0.25);
        }
        .btn-primary {
            background-color: #1a73e8;
            border-color: #1a73e8;
            padding: 12px 25px;
            border-radius: 8px;
            font-weight: 600;
            font-size: 1.1em;
            margin-top: 10px;
            transition: all 0.3s ease;
            box-shadow: 0 4px 10px rgba(26, 115, 232, 0.3);
            width: 100%;
        }
        .btn-primary:hover {
            background-color: #1765c0;
            border-color: #1765c0;
            transform: translateY(-2px);
            box-shadow: 0 6px 15px rgba(26, 115, 232, 0.4);
        }
        .btn-secondary {
            background-color: #6c757d;
            border-color: #6c757d;
            padding: 12px 25px;
            border-radius: 8px;
            font-weight: 600;
            font-size: 1.1em;
            margin-top: 15px;
            transition: all 0.3s ease;
            width: 100%;
        }
        .btn-secondary:hover {
            background-color: #5a6268;
            border-color: #5a6268;
            transform: translateY(-2px);
        }
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }
    </style>
</head>
<body>
    <div class="dashboard-card">
        <h2>Student Dashboard</h2>
        <p>${welcomeMessage}</p>

        <p>Enter your Roll Number below to view your report card.</p>

        <form action="getStudentReportFromStudentDashboard" method="get">
            <div class="form-group">
                <label for="studentRollNumber" class="form-label">
                    <i class="fas fa-id-card me-2"></i>Your Roll Number
                </label>
                <input type="number" class="form-control" id="studentRollNumber" name="studentRollNumber" placeholder="e.g., 12345" required>
            </div>
            <button type="submit" class="btn btn-primary">
                <i class="fas fa-file-alt me-2"></i>Get My Report
            </button>
        </form>

        <a href="login1" class="btn btn-secondary">
            <i class="fas fa-sign-out-alt me-2"></i>Logout
        </a>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/js/all.min.js"></script>
</body>
</html>