<%@page import="com.entity.StudentEntity"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link
	href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css"
	rel="stylesheet">

</head>
<body>

	<%
	List<StudentEntity> students = (List<StudentEntity>) request.getAttribute("students");
	%>


	<div class="row">
		<div class="col-md-4">
		</div>

		<div class="col-md-4">
			<h2 align="center">List Student</h2>
		
			<table border="1" class="table table-hover table-bordered">

				<thead>
					<tr class="table-dark">
						<td>StudentId</td>
						<td>FirstName</td>
						<td>LastName</td>
						<td>Gender</td>
						<td>Email</td>
					</tr>
				</thead>

				<%
				for (StudentEntity s : students) {
				%>
				<tr>
					<td><%=s.getStudentId()%></td>
					<td><%=s.getFirstName()%></td>
					<td><%=s.getLastName()%></td>
					<td><%=s.getGender()%></td>
					<td><%=s.getEmail()%></td>
				</tr>

				<%
				}
				%>

			</table>
		</div>
	</div>


</body>
</html>