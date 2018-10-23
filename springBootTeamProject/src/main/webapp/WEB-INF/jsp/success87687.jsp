<%@page import="java.lang.ProcessBuilder.Redirect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core" %>    

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body style="background-image: linear-gradient(to bottom right, #A1F6BE, #00CC45); margin-top: 5%; padding-left: 5%; padding-right: 5%; padding-bottom: 20px">
					
	<form name="myform">
	<h1 style="margin-left: 38%">ALL USER DATA</h1>
	<div style="border: 2px solid; border-radius: 10px; background-color: #47E47C; width: 75%; margin-left: 13%">
		<table class="table table-hover" style="font-size: 20px">
			<tr align="center" style="background-color: #009E30; font-size: 23px">
				
				<th>ID</th>
				<th>NAME</th>
				<th>ADDRESS</th>
				<th>USERNAME</th>
				<th>ROLE</th>
			</tr>
			
			<a:forEach items="${studentList}" var="student" varStatus="loop">
			
			
				<a:choose>
					<a:when test="${loop.index == 0}">
						<tr class="table-success">
							<td style="padding-left: 40px"><a:out value="${student.id}"></a:out></td>
							<td align="center"><a:out value="${student.name}"></a:out></td>
							<td align="center"><a:out value="${student.address}"></a:out></td>
							<td align="center"><a:out value="${student.uname}"></a:out></td>
							<td align="center"><a:out value="${student.role}"></a:out></td>
						</tr>	
					</a:when>
					<a:otherwise>
						<tr>
							<td align="center"><input type="radio" name="record" value="${student.id}" ></td>
							<td align="center"><a:out value="${student.name}"></a:out></td>
							<td align="center"><a:out value="${student.address}"></a:out></td>
							<td align="center"><a:out value="${student.uname}"></a:out></td>
							<td align="center"><a:out value="${student.role}"></a:out></td>
						</tr>
					</a:otherwise>
				</a:choose>
			
			</a:forEach>

		</table>
		</div><br>
		
		<div style="margin-left: 30%">
			<input type="button" value="Add User" class="btn btn-outline-success"    onclick="insert1()" style="margin-right: 30px; font-size: 25px">
			<input type="button" value="Update User" class="btn btn-outline-dark"    onclick="update1(record.value)" style="margin-right: 30px; font-size: 25px;">
			<input type="button" value="Delete User" class="btn btn-outline-danger"  onclick="delete1(record.value)" style="font-size: 25px">
		</div>
		
	</form>

</body>

<script>
	
	function insert1() {
		
		document.myform.action="register";
		document.myform.submit();
		
	}
	
	function update1(rec) {
		
		alert(rec);

		document.myform.action="updatePage";
		document.myform.submit();
				
	}
	
	function delete1(rec) {
		
		alert(rec);

		document.myform.action="deleteStudent";
		document.myform.submit();
		
	}
		

</script>

<script>
	
	function insert1() {
		
		document.myform.action="register";
		document.myform.submit();
	}
	
	function update1(rec) {

		document.myform.action="updatePage";
		document.myform.submit();
		
	}
	
	function delete1(rec) {

		document.myform.action="deleteStudent";
		document.myform.submit();
		
	}
		

</script>

</html>