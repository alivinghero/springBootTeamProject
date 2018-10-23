<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE>
<html>
<head>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css">
</head>

	<body  style="margin-top: 10%; background-image: linear-gradient(to bottom right, #D8FDA5, #79E800)">
	
	<h1 style="margin-left: 40%">LOGIN PAGE</h1>
	
	<div style="width:25%; padding:20px; border: 2px solid; border-radius: 10px; margin-left: 36%; background-color: #82F849;">		
		
		<form action="checkUser">			
			<div class="form-group col-xs-3">
				USERNAME: <input type="text" name="uname" class="form-control" placeholder="username" required="required"> 
			</div>
			
			<div class="form-group col-xs-3">
				PASSWORD: <input type="password" name="password" class="form-control" placeholder="password" required="required">
			</div>

			
			<div style="margin-left: 50px">
				<input type="submit" value="SUBMIT" class="btn btn-outline-success">&nbsp;&nbsp;<a href="register" style="color: #A0CE00; font-size: 20px">Registration</a>		
			</div>
			
		</form>
		
	</div>
		
		
	</body>

</html>