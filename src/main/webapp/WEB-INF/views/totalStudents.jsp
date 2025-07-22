<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>All Students</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-image: url('images/totalstudents.jpg'); /* You might need to adjust the image path */
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center;
            min-height: 100vh;
            display: flex;
            flex-direction: column;
            align-items: center;
            padding: 20px;
        }
        .container {
            background: rgba(255, 255, 255, 0.9); /* Slightly transparent background for readability */
            padding: 30px;
            border-radius: 10px;
            box-shadow: 0 0 15px rgba(0, 0, 0, 0.2);
            margin-top: 30px;
            width: 100%;
            max-width: 1200px;
        }
        h2 {
            color: #0056b3;
            margin-bottom: 25px;
            text-align: center;
        }
        .table th, .table td {
            vertical-align: middle;
            text-align: center;
        }
        .table thead {
            background-color: #007bff;
            color: white;
        }
        .table tbody tr:hover {
            background-color: #f1f1f1;
        }
        .back-link {
            display: inline-block;
            margin-top: 20px;
            padding: 10px 20px;
            background-color: #6c757d;
            color: white;
            border-radius: 5px;
            text-decoration: none;
            transition: background-color 0.3s ease;
        }
        .back-link:hover {
            background-color: #5a6268;
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>All Student Records</h2>

        <c:if test="${empty students}">
            <div class="alert alert-info text-center" role="alert">
                No students found in the database.
            </div>
        </c:if>

        <c:if test="${not empty students}">
            <div class="table-responsive">
                <table class="table table-striped table-bordered">
                    <thead>
                        <tr>
                            <th>ID</th>
                            <th>Roll Number</th>
                            <th>Name</th>
                            <th>Hindi</th>
                            <th>English</th>
                            <th>Physics</th>
                            <th>Chemistry</th>
                            <th>Mathematics</th>
                            <th>Total Marks</th>
                        </tr>
                    </thead>
                    <tbody>
                        <c:forEach var="student" items="${students}">
                            <tr>
                                <td>${student.id}</td>
                                <td>${student.studentRollNumber}</td>
                                <td>${student.studentName}</td>
                                <td>${student.hindi}</td>
                                <td>${student.english}</td>
                                <td>${student.physics}</td>
                                <td>${student.chemistry}</td>
                                <td>${student.mathematics}</td>
                                <td>
                                    <c:set var="totalMarks" value="${student.hindi + student.english + student.physics + student.chemistry + student.mathematics}" />
                                    ${totalMarks}
                                </td>
                            </tr>
                        </c:forEach>
                    </tbody>
                </table>
            </div>
        </c:if>
        <div class="text-center">
            <a href="index" class="back-link">Back to Homepage</a>
        </div>
    </div>

    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>