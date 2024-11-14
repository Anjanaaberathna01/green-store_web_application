<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<!--page title-->
<title>Login</title>
<!--boostrap css for styling and layout-->
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
<!--custom css file for additonal style-->
<link rel="stylesheet" href="css/changes.css">
<!--jquery library-->
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>

<!--boostrap java script for additional components and responsivenes-->
<script
	src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>
</head>
<body style="background-color: #f3f3f3;">

	<%@ include file="header.jsp"%>

	<%
	String message = request.getParameter("message");
	%>
<!-- main container for ligin form-->
	<div class="container">
		<div class="row"
			style="margin-top: 5px; margin-left: 2px; margin-right: 2px;">
			<form action="./LoginSrv" method="post"
				class="col-md-4 col-md-offset-4 col-sm-8 col-sm-offset-2"
				style=" border-radius: 10px; background-color: #fff; padding: 10px;">
				<div style="font-weight: bold;" class="text-center">
					<h2 style="color: #4CAF50; font-weight: bold; font-family: Garamond, serif;">Login</h2>
                                        <!--display massage if available-->
					<%
					if (message != null) {
					%>
					<p style="color: blue;">
						<%=message%>
					</p>
					<%
					}
					%>
				</div>
				<!-- username input field-->
				<div class="row">
					<div class="col-md-12 form-group">
						<label for="last_name">Username</label> <input type="email"
							placeholder="Enter Username" name="username" class="form-control"
							id="last_name" required>
					</div>
				</div>
    				<-- password input field-->
				<div class="row">
					<div class="col-md-12 form-group">
						<label for="last_name">Password</label> <input type="password"
							placeholder="Enter Password" name="password" class="form-control"
							id="last_name" required>
					</div>
				</div>
				<!-- user role selection-->
				<div class="row">
					<div class="col-md-12 form-group">
						<label for="userrole">Login As</label> <select name="usertype"
							id="userrole" class="form-control" required>
							<option value="customer" selected>CUSTOMER</option>
							<option value="admin">ADMIN</option>
						</select>
					</div>
				</div>
				<!--submit button-->
				<div class="row">
					<div class="col-md-12 text-center">
						<button type="submit" class="btn btn-success">Login</button>
					</div>
				</div>
			</form>

		</div>
	</div>

	<%@ include file="footer.html"%>

</body>
</html>
