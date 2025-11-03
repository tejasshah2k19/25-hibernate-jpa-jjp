<%@ page contentType="text/html;charset=UTF-8" language="java"%>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="UTF-8">
<title>New Student</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

<style>
body {
	background-color: #f8f9fa;
}

.form-container {
	max-width: 700px;
	background-color: #fff;
	padding: 30px;
	border-radius: 12px;
	box-shadow: 0 4px 12px rgba(0, 0, 0, 0.1);
	margin-top: 40px;
}

.form-title {
	font-weight: 600;
	color: #0d6efd;
	margin-bottom: 20px;
	text-align: center;
}

.btn-submit {
	width: 100%;
	font-weight: 500;
}
</style>
</head>
<body>

	<div class="container d-flex justify-content-center">
		<div class="form-container">
			<h2 class="form-title">Add New Student</h2>

			<form action="saveStudent" method="post">


				<div class="row">
					<div class="col-md-6 mb-3">
						<label for="firstName" class="form-label">First Name</label> <input
							type="text" class="form-control" value="${studentBean.firstName}"
							id="firstName" name="firstName" placeholder="Enter first name">
						<span class="text-danger">${result.getFieldError("firstName").getDefaultMessage()}</span>
					</div>
					<div class="col-md-6 mb-3">
						<label for="lastName" class="form-label">Last Name</label> <input
							type="text" class="form-control" value="${studentBean.lastName}"
							id="lastName" name="lastName" placeholder="Enter last name">
						<span class="text-danger">${result.getFieldError("lastName").getDefaultMessage()}</span>

					</div>
				</div>

				<div class="mb-3">
					<label class="form-label">Gender</label><br>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="gender"
							id="male" value="Male"> <label class="form-check-label"
							for="male">Male</label>
					</div>
					<div class="form-check form-check-inline">
						<input class="form-check-input" type="radio" name="gender"
							id="female" value="Female"> <label
							class="form-check-label" for="female">Female</label>
					</div>
					<span class="text-danger">${result.getFieldError("gender").getDefaultMessage()}</span>
				</div>

				<div class="mb-3">
					<label for="email" class="form-label">Email ID</label> <input
						type="email" class="form-control" value="${studentBean.email}"
						id="email" name="email" placeholder="Enter email address">
					<span class="text-danger">${result.getFieldError("email").getDefaultMessage()}</span>

				</div>

            <div class="mb-3">
                <label for="password" class="form-label">Password</label>
                <input type="password" class="form-control"  id="password" name="password" placeholder="Enter password"  >
    		<span class="text-danger">${result.getFieldError("password").getDefaultMessage()}</span>
            
            </div>



				<div class="mb-3">
					<label for="mobileNum" class="form-label">Mobile Number</label> <input
						type="text" class="form-control" value="${studentBean.mobileNum}"
						id="mobileNum" name="mobileNum" placeholder="Enter mobile number">
					<span class="text-danger">${result.getFieldError("mobileNum").getDefaultMessage()}</span>

				</div>

				<!-- Batch Dropdown -->
				<div class="mb-3">
					<label for="batch" class="form-label">Batch</label> <select
						class="form-select" id="batch" name="batch">
						<option value="" disabled selected>Select batch</option>
						<option value="one to one">One to One</option>
						<option value="general">General</option>
						<option value="club">Club</option>
						<option value="complimentary">Complimentary</option>
					</select> <span class="text-danger">${result.getFieldError("batch").getDefaultMessage()}</span>

				</div>

				<div class="mb-3">
					<label for="college" class="form-label">College</label> <input
						type="text" class="form-control" id="college" name="college"
						placeholder="Enter college name"> <span
						class="text-danger">${result.getFieldError("college").getDefaultMessage()}</span>

				</div>

				<div class="mb-3">
					<label for="course" class="form-label">Course</label> <input
						type="text" class="form-control" id="course" name="course"
						placeholder="Enter course name"> <span
						class="text-danger">${result.getFieldError("course").getDefaultMessage()}</span>

				</div>

				<!-- Branch Dropdown -->
				<div class="mb-3">
					<label for="branch" class="form-label">Branch</label> <select
						class="form-select" id="branch" name="branch">
						<option value="" disabled selected>Select branch</option>
						<option value="Ahmedabad">Ahmedabad</option>
						<option value="Himmatnagar">Himmatnagar</option>
						<option value="Gandhinagar">Gandhinagar</option>
					</select> <span class="text-danger">${result.getFieldError("branch").getDefaultMessage()}</span>

				</div>

				<button type="submit" class="btn btn-primary btn-submit">Submit</button>
			</form>
		</div>
	</div>

	<script
		src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/js/bootstrap.bundle.min.js"></script>
</body>
</html>
