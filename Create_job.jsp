<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <title>Enter Job Data</title>
    
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
select,
textarea,
input[type="date"],
input[type="submit"] {
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
</head>
<body>
    <h1>Enter Job Data</h1>
    <form action="create_job" method="post">
        <table>
            <tr>
                <th><label for="title">Title:</label></th>
                <td><input type="text" id="title" name="title" required></td>
            </tr>
            <tr>
                <th><label for="type">Type:</label></th>
                <td><select id="type" name="type" required>
                    <option value="">Select Job Type</option>
                    <%
                        // List of job types
                        // For example:
                        String[] jobTypes = {"IT Manager", "HR Manager", "Developer", "HR Assistant", "Sales Manager"};
                        for (String jobType : jobTypes) {
                    %>
                    <option value="<%=jobType%>"><%=jobType%></option>
                    <%
                        }
                    %>
                </select></td>
            </tr>
            <tr>
                <th><label for="department">Department:</label></th>
                <td><select id="department" name="department" required>
                    <option value="">Select Department</option>
                    <%
                        // List of departments
                        // For example:
                        String[] departments = {"IT", "HR", "Sales", "Marketing"};
                        for (String department : departments) {
                    %>
                    <option value="<%=department%>"><%=department%></option>
                    <%
                        }
                    %>
                </select></td>
            </tr>
            <tr>
                <th><label for="country">Country:</label></th>
                <td><select id="country" name="country" required>
                    <option value="">Select Country</option>
                    <%
                        // List of countries
                        // For example:
                        String[] countries = {"USA", "Canada", "Mexico", "UK", "Germany"};
                        for (String country : countries) {
                    %>
                    <option value="<%=country%>"><%=country%></option>
                    <%
                        }
                    %>
                </select></td>
            </tr>
            <tr>
                <th><label for="description">Description:</label></th>
                <td><textarea id="description" name="description" required></textarea></td>
            </tr>
            <tr>
                <th><label for="opening_date">Opening Date:</label></th>
                <td><input type="date" id="opening_date" name="opening_date" required></td>
            </tr>
           
            <tr>
                <th><input type="submit" value="Submit"></th>
            </tr>
        </table>
    </form>
</body>
</html>