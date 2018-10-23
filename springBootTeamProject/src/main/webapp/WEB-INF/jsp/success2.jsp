<%@page import="java.lang.ProcessBuilder.Redirect"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="a" uri="http://java.sun.com/jsp/jstl/core" %> 
<%@ page import="java.util.*"%>   
<%@ page import="com.model.Student"%>    

<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body style="background-image: linear-gradient(to bottom right, #A1F6BE, #00CC45); margin-top: 5%; padding-left: 5%; padding-right: 5%; padding-bottom: 20px">			
			<script>
				var id1 = ${map.curid};
				
				var role1 = ${map.role};
			</script>
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
				<th>UPDATE</th>
				<th>DELETE</th>
			</tr>		
	
				<a:forEach items="${map.studentList}" var="student">

				<tr style="padding-left: 50px;">
				
					<td align="center"><a:out value="${student.id}"></a:out></td>								
					<td align="center"><a:out value="${student.name}"></a:out></td>
					<td align="center"><a:out value="${student.address}"></a:out></td>
					<td align="center"><a:out value="${student.uname}"></a:out></td>
					<td align="center"><a:out value="${student.role}"></a:out></td>		
					<td align="center"><input type="button" value="Update" onclick="updateRow('${student.id}')" class="btn btn-outline-dark"></td>		
					<td align="center"><input type="button" value="Delete" onclick="deleteRow('${student.id}')" class="btn btn-outline-danger"></td>						
							
				</tr>		
			</a:forEach>
		
			

		</table>
		</div><br>
		
		<div style="margin-left: 35%">
			<input type="button" value="Add User"    onclick="insert1()"                class="btn btn-outline-success" style="margin-right: 5px; font-size: 25px">	
		
		</div>
		
	</form>

</body>



<script>

	
	  
	function insert1() {		
		document.myform.action="register";
		document.myform.submit();		
	}

		
	function updateRow(val){
	    myform.action="goToUpdatePage?record="+val;
		myform.submit();
	}
	
	
	function deleteRow(val){
	    document.myform.action="deleteRow/"+val;
	    document.myform.submit();
	}
	
	

</script>


</html>