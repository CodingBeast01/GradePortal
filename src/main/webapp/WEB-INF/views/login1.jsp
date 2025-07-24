<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>User Login</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/6.0.0-beta3/css/all.min.css">
    <style>
        body {
            background: linear-gradient(135deg, #89f7fe 0%, #66a6ff 100%);
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
        }
        .login-container {
            background: rgba(255, 255, 255, 0.95);
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 10px 30px rgba(0, 0, 0, 0.2);
            width: 100%;
            max-width: 400px;
            text-align: center;
            animation: fadeIn 0.8s ease-out;
        }
        h2 {
            color: #007bff;
            margin-bottom: 30px;
            font-weight: 700;
        }
        .form-control, .form-select { /* Added form-select here */
            border-radius: 8px;
            padding: 12px 15px;
            border: 1px solid #ced4da;
            transition: all 0.3s ease;
        }
        .form-control:focus, .form-select:focus { /* Added form-select here */
            border-color: #007bff;
            box-shadow: 0 0 0 0.25rem rgba(0, 123, 255, 0.25);
        }
        .form-group label {
            text-align: left;
            display: block;
            margin-bottom: 8px;
            font-weight: 600;
            color: #555;
        }
        .btn-success {
            background: linear-gradient(45deg, #28a745 0%, #218838 100%);
            border: none;
            border-radius: 8px;
            padding: 12px 25px;
            font-weight: 600;
            font-size: 1.1em;
            margin-top: 20px;
            transition: all 0.3s ease;
            box-shadow: 0 4px 10px rgba(40, 167, 69, 0.3);
        }
        .btn-success:hover {
            background: linear-gradient(45deg, #218838 0%, #28a745 100%);
            transform: translateY(-2px);
            box-shadow: 0 6px 15px rgba(40, 167, 69, 0.4);
        }
        .text-center a {
            color: #007bff;
            text-decoration: none;
            margin-top: 20px;
            display: block;
            transition: color 0.3s ease;
        }
        .text-center a:hover {
            color: #0056b3;
            text-decoration: underline;
        }
        @keyframes fadeIn {
            from { opacity: 0; transform: translateY(-20px); }
            to { opacity: 1; transform: translateY(0); }
        }
        .alert {
            margin-top: 20px;
            padding: 10px;
            border-radius: 8px;
            font-size: 0.9em;
        }
    </style>
</head>
<body>
    <div class="login-container">
        <h2>User Login</h2>

        <c:if test="${not empty error}">
            <div class="alert alert-danger" role="alert">
                ${error}
            </div>
        </c:if>

        <form action="userlogin1" method="post">
            <div class="mb-3 text-start">
                <label for="email" class="form-label"><i class="fas fa-envelope me-2"></i>Email address</label>
                <input type="email" class="form-control" id="email" name="email" aria-describedby="emailHelp" required>
            </div>
            <div class="mb-3 text-start">
                <label for="password" class="form-label"><i class="fas fa-lock me-2"></i>Password</label>
                <input type="password" class="form-control" id="password" name="password" required>
            </div>
            <%-- The role selection for login is not strictly necessary for functionality
                 since the authenticated user's role comes from the database,
                 but if you want to allow users to specify their intended role for routing
                 before authentication, you can include it here.
                 However, for security, the role check *must* happen based on the database, not user input.
                 I'm including it as per your request, but the backend uses the DB role.
            --%>
            <div class="mb-3 text-start">
                <label for="role" class="form-label"><i class="fas fa-user-tag me-2"></i>Login As</label>
                <select class="form-select" id="role" name="role">
                  
                    <option value="Student">Student</option>
                    <option value="Admin">Admin</option>
                </select>
            </div>

            <button type="submit" class="btn btn-success">Log In</button>
        </form>

        <div class="text-center mt-3">
            <a href="register">Don't have an account? Register Now!</a>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>