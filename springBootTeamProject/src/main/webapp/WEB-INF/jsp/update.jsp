<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page errorPage="error.jsp"%>
<!DOCTYPE">
<html>
<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body  style="background-color: #FDBDE1; margin-top: 5%; padding-left: 5%; padding-right: 5%">

<form name="updateForm" class="update-form">
	<h1 style="margin-left: 40%;">STUDENT DATA</h1>
	<div style="border: 2px solid; border-radius: 10px; background-color: #F986C7; width: 70%; margin-left: 15%">
		<table class="table table-hover update-table">
		<tr align="center">
			<th class="align-center">FIELD</th>
			<th class="align-center">CURRRENT DATA</th>
			<th class="align-center">NEW DATA</th>
		</tr>
		<tr align="center">
			<th class="align-center"><label>Id</label></th>
			<td class="align-center">${person.id}</td>
			<td class="align-center"></td>
		</tr>
		<tr align="center">
			<th class="align-center"><label>Name</label></th>
			<td class="align-center">${person.name}</td>
			<td class="align-center"><div class="col-8"><input type="text" name="name" placeholder="new name" class="form-control"></div></td>
		</tr>
		<tr align="center">
			<th class="align-center"><label>Address</label></th>
			<td class="align-center">${person.address}</td>
			<td class="align-center"><div class="col-8"><input type="text" name="address" placeholder="new address" class="form-control"></div></td>
		</tr>
		<tr align="center">
			<th class="align-center"><label>Username</label></th>
			<td class="align-center">${person.uname}</td>
			<td class="align-center"><div class="col-8"><input type="text" name="uname" placeholder="new username" class="form-control"></div></td>
		</tr>
		<tr align="center">
			<th class="align-center"><label>Password</label></th>
			<td class="align-center">${person.password}</td>
			<td class="align-center"><div class="col-8"><input type="password" name="password" placeholder="new password" class="form-control"></div></td>
		</tr>

	</table>
	</div><br>

	<div style="margin-left: 37%">
		<input type="button" value="Go Back" class="btn btn-outline-primary btn-lg update-goback" onclick="goBack()"   style="margin-right: 30px; font-size: 25px">
		<input type="button" value="Update"  class="btn btn-outline-success btn-lg update-submit" onclick="toUpdate()" style="font-size: 25px">		
	</div>
	
	
</form>
</body>

<script>
	
	function goBack() {
		document.updateForm.action="goTosuccess2Page";
		document.updateForm.submit();
	}
	
	function toUpdate(){
		document.updateForm.action="updateOneStudent";
		document.updateForm.submit();
	}
	
</script>
</html>