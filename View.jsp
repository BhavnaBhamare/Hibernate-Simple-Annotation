<%@page import="com.pojo.Student"%>
<%@page import="java.util.List"%>
<%@page import="com.model.BLManager"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<style type="text/css">
tr {
	border: 1cm;
	border-color: teal;
	margin: 0.5mm;
	height: 1.5cm;
	text-align: center;
}
</style>
</head>
<body>

	<%
		BLManager bl = new BLManager();
		List<Student> l = bl.getAllStud();
		session.setAttribute("list", l);
	%>
<center><h1>Student Details</h1></center>

	<table border="2" width="100%">
		<tr>
			<th>ID</th>
			<th>FIRST NAME</th>
			<th>LAST NAME</th>
			<th>EMAIL</th>
			<th>ADDRESS</th>
			<th>MOBILE</th>
			<th>DATE OF BIRTH</th> 
			<th>GENDER</th>
			<th>AGE</th>
			<th>DELETE</th>
			<th>UPDATE</th>
		</tr>
		<c:forEach items="${sessionScope.list }" var="l">

			<tr>

				<td>${l.id}</td>
				<td>${l.fname}</td>
				<td>${l.lname}</td>
				<td>${l.email}</td>
				<td>${l.address}</td>
				<td>${l.mobile}</td>
				<td>${l.dateofbirth}</td>
				<td>${l.gender}</td>
				<td>${l.age}</td>
				<td><a href="DeleteServlet?id=${l.id}"> Delete</a></td>
				<td><a href="UpdateServlet?id=${l.id}"> Update</a></td>

			</tr>


		</c:forEach>
			<tr>
				<td colspan="11" ><a href="Index.jsp"> Add Records</a></td>
			</tr>
	</table>
</body>
</html>