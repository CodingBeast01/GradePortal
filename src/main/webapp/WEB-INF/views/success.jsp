<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page isELIgnored="false" %>

<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Success - Student Added</title>
    <style>
        * {
            margin: 0;
            padding: 0;
            box-sizing: border-box;
            font-family: -apple-system, BlinkMacSystemFont, "Segoe UI", Roboto, "Helvetica Neue", Arial, sans-serif;
        }

        body {
            min-height: 100vh;
            
			
			background-image: url('images/success.png'); 
			background-repeat: no-repeat; 
			background-size: cover; 
			background-position: center; 
			
            display: flex;
            justify-content: center;
            align-items: center;
            padding: 2rem;
        }

        .success-card {
            background: white;
            padding: 2.5rem;
            border-radius: 16px;
            box-shadow: 0 20px 25px -5px rgba(0, 0, 0, 0.1), 0 8px 10px -6px rgba(0, 0, 0, 0.1);
            max-width: 500px;
            width: 100%;
            text-align: center;
            position: relative;
            overflow: hidden;
        }

        .success-card::before {
            content: '';
            position: absolute;
            top: 0;
            left: 0;
            right: 0;
            height: 4px;
            background: linear-gradient(90deg, #22c55e, #16a34a);
        }

        .success-icon {
            width: 64px;
            height: 64px;
            background: #dcfce7;
            border-radius: 50%;
            display: flex;
            align-items: center;
            justify-content: center;
            margin: 0 auto 1.5rem;
            color: #16a34a;
            animation: scaleIn 0.5s ease-out;
        }

        @keyframes scaleIn {
            from {
                transform: scale(0);
                opacity: 0;
            }
            to {
                transform: scale(1);
                opacity: 1;
            }
        }

        h1 {
            color: #1f2937;
            font-size: 1.875rem;
            margin-bottom: 1rem;
            font-weight: 700;
        }

        p {
            color: #4b5563;
            margin-bottom: 2rem;
            font-size: 1.125rem;
        }

        .back-link {
            display: inline-flex;
            align-items: center;
            gap: 0.5rem;
            color: #2563eb;
            text-decoration: none;
            font-weight: 500;
            padding: 0.75rem 1.5rem;
            background: #eff6ff;
            border-radius: 8px;
            transition: all 0.3s ease;
        }

        .back-link:hover {
            background: #dbeafe;
            transform: translateY(-2px);
        }

        .back-link svg {
            width: 20px;
            height: 20px;
            transition: transform 0.3s ease;
        }

        .back-link:hover svg {
            transform: translateX(-4px);
        }

        @media (max-width: 640px) {
            .success-card {
                padding: 2rem;
            }

            h1 {
                font-size: 1.5rem;
            }

            p {
                font-size: 1rem;
            }
        }
    </style>
</head>
<body>
    <div class="success-card">
        <div class="success-icon">
            <svg xmlns="http://www.w3.org/2000/svg" width="32" height="32" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <path d="M22 11.08V12a10 10 0 1 1-5.93-9.14"/>
                <polyline points="22 4 12 14.01 9 11.01"/>
            </svg>
        </div>
        <h1>Student Added Successfully!</h1>
        <p>Thank you for submitting the student details.</p>
         <p>Student Name is - ${student.studentName }</p>
          <p> Student RollNumber is - ${student.studentRollNumber }</p>
        <a href="index" class="back-link">
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <path d="m15 18-6-6 6-6"/>
            </svg>
            Back to Homepage
        </a>
		
		<a href="AddStudent" class="back-link">
            <svg xmlns="http://www.w3.org/2000/svg" width="24" height="24" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round">
                <path d="m15 18-6-6 6-6"/>
            </svg>
            Add a New Student
        </a>
      
    </div>
</body>
</html>
