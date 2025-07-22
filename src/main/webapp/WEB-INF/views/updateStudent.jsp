<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Edit Student Details</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            display: flex;
            justify-content: center;
            align-items: center;
            min-height: 100vh;
            padding: 20px;
        }
        .container {
            background: white;
            padding: 40px;
            border-radius: 10px;
            box-shadow: 0 4px 15px rgba(0, 0, 0, 0.1);
            max-width: 600px;
            width: 100%;
        }
        h2 {
            color: #007bff;
            margin-bottom: 30px;
            text-align: center;
        }
        .form-label {
            font-weight: bold;
        }
        .btn-primary {
            width: 100%;
            margin-top: 20px;
        }
        .back-link {
            display: block;
            text-align: center;
            margin-top: 15px;
            color: #6c757d;
            text-decoration: none;
        }
        .back-link:hover {
            text-decoration: underline;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Edit Student Details</h2>
        <c:if test="${empty student}">
            <div class="alert alert-warning" role="alert">
                Student not found. Please go back and try again.
            </div>
        </c:if>
        <c:if test="${not empty student}">
            <form action="updateStudentDetails" method="post">
                <input type="hidden" name="id" value="${student.id}" /> <%-- Keep the actual ID for Hibernate --%>
                <div class="mb-3">
                    <label for="studentRollNumber" class="form-label">Roll Number</label>
                    <input type="number" class="form-control" id="studentRollNumber" name="studentRollNumber" value="${student.studentRollNumber}" readonly>
                </div>
                <div class="mb-3">
                    <label for="studentName" class="form-label">Student Name</label>
                    <input type="text" class="form-control" id="studentName" name="studentName" value="${student.studentName}" required>
                </div>
                <h4>Subject Marks</h4>
                <div class="mb-3">
                    <label for="hindi" class="form-label">Hindi</label>
                    <input type="number" class="form-control" id="hindi" name="hindi" min="0" max="100" value="${student.hindi}" required>
                </div>
                <div class="mb-3">
                    <label for="english" class="form-label">English</label>
                    <input type="number" class="form-control" id="english" name="english" min="0" max="100" value="${student.english}" required>
                </div>
                <div class="mb-3">
                    <label for="physics" class="form-label">Physics</label>
                    <input type="number" class="form-control" id="physics" name="physics" min="0" max="100" value="${student.physics}" required>
                </div>
                <div class="mb-3">
                    <label for="chemistry" class="form-label">Chemistry</label>
                    <input type="number" class="form-control" id="chemistry" name="chemistry" min="0" max="100" value="${student.chemistry}" required>
                </div>
                <div class="mb-3">
                    <label for="mathematics" class="form-label">Mathematics</label>
                    <input type="number" class="form-control" id="mathematics" name="mathematics" min="0" max="100" value="${student.mathematics}" required>
                </div>
                <button type="submit" class="btn btn-primary">Update Student</button>
            </form>
        </c:if>
        <a href="index" class="back-link">Back to Homepage</a>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>