<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>
<body style="background-image: linear-gradient(to bottom right, #D5FBF6, #29AB99)">

<h1 style="margin-left: 34%; margin-top: 5%;">REGISRATION PAGE</h1>
<form action="saveUser">

	<div class="form-group col-xs-3" style="width:25%; padding:20px; border: 2px solid; border-radius: 10px; margin-left: 35%; background-color: #6FDECF">
		
		<div class="form-group col-xs-3">
			NAME:-<input type="text" name="name" class="form-control" placeholder="name" required="required">
		</div>	
		
		<div class="form-group">
			ADDRESS:-<input type="text" name="address" class="form-control" placeholder="address" required="required">
		</div>
		
		<hr>
		
		<div class="form-group">
			USERNAME:-<input type="text" name="uname" class="form-control" placeholder="username" required="required">
		</div>
		
		<div class="form-group">	
			PASSWORD:-<input type="password" name="password" class="form-control" placeholder="password" required="required">
		</div>
		
		<hr>
		
			
		<div class="form-group">	
			ROLE:-	
			<select name="role" class="form-control" required="required">
				<option value="user" selected="selected">User</option>
			    <option value="manager">Manger</option>
			    <option value="admin">Admin</option>
			 </select>
		</div>
				
		<div class="form-group">
			
			<input type="submit" value="Submit" class="btn btn-outline-success" style="margin-left: 35%">
		</div>
	</div>
	
	
	
</form>

</body>

<script>
	function goBack(){
		document.myform.action="goToSuccessPage";
		document.myform.submit();
	}
</script>


</html>