<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
tr
{
border: 1cm;
border-color: teal;
margin: 0.5mm;
height: 1.5cm;
text-align: center;
}
</style>
</head>
<body>
	<form action="SaveServlet" method="post">
	<center><h1>Add Student Details</h1></center> 
		<table align="center" border="20" bordercolor="red" width="80%">
			<tr>
				<th>Data</th>
				<th>Value</th>
			</tr>
			<tr>
				<td>First Name:-</td>
				<td><input type="text" name="fname"></td>
			</tr>
			<tr>
				<td>Last Name:-</td>
				<td><input type="text" name="lname"></td>
			</tr>
			<tr>
				<td>email:-</td>
				<td><input type="text" name="email"></td>
			</tr>
			<tr>
				<td>Address:-</td>
				<td><input type="text" name="address"></td>
			</tr>
			<tr>
				<td>Mobile:-</td>
				<td><input type="text" name="mobile"></td>
			</tr>
			<tr>
				<td>date of birth:-</td>
				<td><input type="text" name="dateofbirth"></td>
			</tr>
			<tr>
				<td>Gender:-</td>
				<td><select name="gender">
				<option>Female</option>
				<option>Male</option>
				<option>Other</option>
				</select></td>
			</tr>
			<tr>
				<td>Age:-</td>
				<td><input type="text" name="age"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><input type="submit" value="Add Student"></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><a href="View.jsp">View Student</a></td>
			</tr>
		</table>
	</form>
</body>
</html>