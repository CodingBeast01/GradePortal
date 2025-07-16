



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Delete Student</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
            background-image: url('images/deletestudenthtml1.png'); 
			background-repeat: no-repeat; 
			background-size: cover; 
			background-position: center; 
        }
        .container {
            max-width: 500px;
            margin-top: 50px;
            padding: 20px;
            background: #e2d0f1 ;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <div class="container">
        <h2 class="text-center">Delete Student</h2>
		
		
        <form action="DeleteStudentbyID" method="post">
		
		
            <div class="mb-3">
                <label for="studentId" class="form-label"><b>Student ID</b></label>
                <input type="text" class="form-control" id="studentId" name="student_id" required>
            </div>
			
			<!-- 
            <div class="mb-3">
                <label for="studentName" class="form-label"><b>Name</b></label>
                <input type="text" class="form-control" id="studentName" name="student_name" required>
            </div> -->
			
			
           
			
			
            <button type="submit" class="btn btn-primary w-100">Delete</button>
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>























