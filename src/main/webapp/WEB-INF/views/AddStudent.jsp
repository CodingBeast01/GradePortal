



<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Add Student</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/css/bootstrap.min.css" rel="stylesheet">
    <style>
        body {
		
		
            background-image: url('images/addstudenthtml1.jpg'); /* Replace with your image URL */
			background-repeat: no-repeat; /* Prevent the image from repeating */
			background-size: cover; /* Cover the entire area */
			background-position: center; /* Center the image */
        }
        .container {
            max-width: 500px;
            margin-top: 50px;
			margin-left: 100px;
            padding: 20px;
            background: #d0f9f5;
            border-radius: 10px;
            box-shadow: 0 0 10px rgba(0, 0, 0, 0.1);
        }
    </style>
</head>
<body>
    <div class="container">
        <h2 class="text-center">Add Student</h2>
		
		
        <form action="addStudentDetails" method="post">
		
		
            <div class="mb-3">
                <label for="studentId" class="form-label"><b>Student ID</b></label>
                <input type="text" class="form-control" id="studentId" name="studentRollNumber" required>
            </div>
			
			
            <div class="mb-3">
                <label for="studentName" class="form-label"><b>Name</b></label>
                <input type="text" class="form-control" id="studentName" name="studentName" required>
            </div>
			
			
            <div class="mb-3">
                <label class="form-label"><b>Subject Marks</b></label>
				
                <input type="number"   min="0" max="100" class="form-control" id="hindi" name="hindi" placeholder="Hindi Marks" required><br>
                <input type="number" min="0" max="100" class="form-control" id="english" name="english" placeholder="English Marks" required><br>
                <input type="number" min="0" max="100" class="form-control" id="physics" name="physics" placeholder="Physics Marks" required><br>
                <input type="number" min="0" max="100" class="form-control" id="chemistry" name="chemistry" placeholder="Chemistry Marks" required><br>
                <input type="number" min="0" max="100" class="form-control" id="math" name="mathematics" placeholder="Math Marks" required><br>
				
            </div>
			
			
            <button type="submit" class="btn btn-primary w-100">Submit</button>
        </form>
    </div>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.0/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>























