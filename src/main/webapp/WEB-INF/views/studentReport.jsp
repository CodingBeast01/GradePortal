<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<%@page isELIgnored="false" %>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Student Report</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-image: url('images/studentreport.jpg'); /* You might need to adjust the image path */
            background-repeat: no-repeat;
            background-size: cover;
            background-position: center;
            min-height: 100vh;
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 20px;
        }
        .container {
            background: rgba(255, 255, 255, 0.95); /* Slightly transparent background for readability */
            padding: 40px;
            border-radius: 15px;
            box-shadow: 0 5px 25px rgba(0, 0, 0, 0.3);
            width: 100%;
            max-width: 600px;
            text-align: center;
        }
        h2 {
            color: #007bff;
            margin-bottom: 30px;
            font-size: 2.2em;
        }
        .student-details p {
            font-size: 1.1em;
            margin-bottom: 10px;
            color: #333;
        }
        .student-details strong {
            color: #0056b3;
        }
        .marks-table {
            width: 80%;
            margin: 25px auto;
            border-collapse: collapse;
        }
        .marks-table th, .marks-table td {
            border: 1px solid #dee2e6;
            padding: 10px;
            text-align: left;
        }
        .marks-table th {
            background-color: #e9ecef;
            color: #495057;
        }
        .total-marks, .percentage {
            font-size: 1.3em;
            font-weight: bold;
            color: #28a745;
            margin-top: 20px;
        }
        .back-link {
            display: inline-block;
            margin-top: 30px;
            padding: 12px 25px;
            background-color: #6c757d;
            color: white;
            border-radius: 8px;
            text-decoration: none;
            transition: background-color 0.3s ease, transform 0.2s ease;
        }
        .back-link:hover {
            background-color: #5a6268;
            transform: translateY(-2px);
        }
    </style>
</head>
<body>
    <div class="container">
        <h2>Student Report</h2>

        <c:if test="${empty student}">
            <div class="alert alert-warning" role="alert">
                Student Record found. Please check the Student Details.
            </div>
        </c:if>

        <c:if test="${not empty student}">
            <div class="student-details">
                <p><strong>Student ID:</strong> ${student.id}</p>
                <p><strong>Roll Number:</strong> ${student.studentRollNumber}</p>
                <p><strong>Student Name:</strong> ${student.studentName}</p>

                <h4>Subject Marks</h4>
                <table class="marks-table table table-bordered">
                    <thead>
                        <tr>
                            <th>Subject</th>
                            <th>Marks</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr><td>Hindi</td><td>${student.hindi}</td></tr>
                        <tr><td>English</td><td>${student.english}</td></tr>
                        <tr><td>Physics</td><td>${student.physics}</td></tr>
                        <tr><td>Chemistry</td><td>${student.chemistry}</td></tr>
                        <tr><td>Mathematics</td><td>${student.mathematics}</td></tr>
                    </tbody>
                </table>
                <p class="total-marks">
                    Total Marks: ${student.hindi + student.english + student.physics + student.chemistry + student.mathematics}
                </p>

                <%-- Calculate and display percentage --%>
                <c:set var="totalMarks" value="${student.hindi + student.english + student.physics + student.chemistry + student.mathematics}" />
                <c:set var="maxMarks" value="500" /> <%-- Assuming 5 subjects * 100 marks each --%>
                <c:set var="percentage" value="${(totalMarks / maxMarks) * 100}" />
                <p class="percentage">
                    Percentage: <fmt:formatNumber value="${percentage}" pattern="0.00" />%
                </p>
            </div>
        </c:if>

        <a href="index" class="back-link">Back to Homepage</a>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>