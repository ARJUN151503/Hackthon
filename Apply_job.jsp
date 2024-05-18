<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<title>Apply for Jobs</title>
	<style>
		body {
			font-family: Arial, sans-serif;
			background-color: #f4f4f4;
			margin: 0;
			padding: 0;
		}

		h1 {
			color: #333;
			text-align: center;
		}

		form {
			margin: 20px auto;
			width: 50%;
			background-color: #fff;
			padding: 20px;
			border-radius: 5px;
			box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
		}

		table {
			width: 100%;
		}

		td {
			padding: 10px;
		}

		label {
			font-weight: bold;
		}

		input[type="text"],
		input[type="email"],
		input[type="tel"],
		input[type="file"],
		input[type="number"],
		textarea,
		select {
			width: 100%;
			padding: 8px;
			margin-top: 5px;
			margin-bottom: 10px;
			border: 1px solid #ccc;
			border-radius: 4px;
			box-sizing: border-box;
		}

		input[type="submit"] {
			background-color: #4CAF50;
			color: white;
			border: none;
			cursor: pointer;
			padding: 10px 20px;
			border-radius: 5px;
		}

		input[type="submit"]:hover {
			background-color: #45a049;
		}

		input:required:invalid,
		select:required:invalid,
		textarea:required:invalid {
			border-color: red;
		}

		input:required:valid,
		select:required:valid,
		textarea:required:valid {
			border-color: green;
		}
	</style>
	<script>
		function validateForm() {
			var firstName = document.forms["applyForm"]["first_name"].value;
			var lastName = document.forms["applyForm"]["last_name"].value;
			var email = document.forms["applyForm"]["email"].value;
			var phone = document.forms["applyForm"]["phone"].value;
			var yearsOfExp = document.forms["applyForm"]["years_of_exp"].value;
			var resume = document.forms["applyForm"]["resume"].value;

			if (firstName == "" || lastName == "" || email == "" || phone == "" || resume == "") {
				alert("All required fields must be filled out.");
				return false;
			}

			if (isNaN(yearsOfExp) || yearsOfExp < 0) {
				alert("Years of experience must be a valid number.");
				return false;
			}

			if (!validateEmail(email)) {
				alert("Please enter a valid email address.");
				return false;
			}

			if (!validatePhone(phone)) {
				alert("Please enter a valid phone number.");
				return false;
			}
		}

		function validateEmail(email) {
			var re = /\S+@\S+\.\S+/;
			return re.test(email);
		}

		function validatePhone(phone) {
			var re = /^\+?\d{1,2}?[-\s]?\(?\d{3}\)?[-\s]?\d{3}[-\s]?\d{4}$/;
			return re.test(phone);
		}
	</script>
</head>
<body>
	<h1>Apply for Jobs</h1>
	<form name="applyForm" onsubmit="return validateForm()" action="submit_application.jsp" method="post" enctype="multipart/form-data">
		<label for="first_name">First Name:</label>
		<input type="text" id="first_name" name="first_name" required><br>

		<label for="last_name">Last Name:</label>
		<input type="text" id="last_name" name="last_name" required><br>

		<label for="email">Email:</label>
		<input type="email" id="email" name="email" required><br>

		<label for="phone">Phone:</label>
		<input type="tel" id="phone" name="phone" required><br>

		<label for="address">Address:</label>
		<input type="text" id="address" name="address"><br>

		<label for="city">City:</label>
		<input type="text" id="city" name="city"><br>

		<label for="state">State:</label>
		<input type="text" id="state" name="state"><br>

		<label for="zip">Zip:</label>
		<input type="text" id="zip" name="zip"><br>

		<label for="country">Country:</label>
		<input type="text" id="country" name="country"><br>

		<label for="edu_level">Education Level:</label>
		<select id="edu_level" name="edu_level" required>
			<option value="">Select Education Level</option>
			<option value="High School">High School</option>
			<option value="UG">UG</option>
			<option value="PG">PG</option>
			<option value="PhD">PhD</option>
		</select><br>

		<label for="edu_type">Education Type:</label>
		<select id="edu_type" name="edu_type" required>
			<option value="">Select Education Type</option>
			<option value="Civil">Civil</option>
			<option value="CSE">CSE</option>
			<option value="ECE">ECE</option>
			<option value="Mech">Mech</option>
		</select><br>

		<label for="resume">Resume:</label>
		<input type="file" id="resume" name="resume" required><br>

		<label for="cover_letter">Cover Letter:</label>
		<textarea id="cover_letter" name="cover_letter"></textarea><br>

		<input type="checkbox" id="employed" name="employed">
		<label for="employed">Are you currently employed?</label><br>

		<div id="employer_info" style="display: none;">
			<label for="current_employer">Current Employer:</label>
			<input type="text" id="current_employer" name="current_employer"><br>

			<label for="years_of_exp">Years of Experience:</label>
			<input type="number" id="years_of_exp" name="years_of_exp" min="0"><br>
		</div>

		<label for="jobs">Jobs to Apply For:</label>
		<select id="jobs" name="jobs[]" multiple>
			<!-- Options for available jobs -->
		</select><br>

		<input type="submit" value="Submit">
	</form>

	<script>
		document.getElementById("employed").addEventListener("change", function() {
			var employerInfo = document.getElementById("employer_info");
			if (this.checked) {
				employerInfo.style.display = "block";
			} else {
				employerInfo.style.display = "none";
			}
		});
	</script>
</body>
</html>