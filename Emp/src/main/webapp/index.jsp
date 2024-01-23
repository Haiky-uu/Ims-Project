<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ page isErrorPage="true" %>
    
    <%@ page isELIgnored = "false" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login</title>
<%@include file= "all_css.jsp" %>
</head>
<body class="bg-light"> 
	<nav class="navbar navbar-expand-lg navbar-dark bg-primary">
  <div class="container-fluid">
    <a class="navbar-brand" href="#">Employee Management System</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
      
      
    </div>
  </div>
</nav>

	
	<div class ="container p-4">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<p class="fs-3 text-center"> Login </p>
						
						
							
<form action="Login" method="post">
  <div class="mb-3">
    <label  class="form-label">Enter Emp Id</label>
    <input type="text" name="empid" placeholder="Enter Your Emp Id" maxlength="5" class="form-control" >
    <label class="form-label">Enter Password</label>
    <input type="password" name="password" placeholder="Enter Your Password" class="form-control" >
    </div>
  

  
  
  <button type="submit" value="Login" class="btn btn-primary col-md-2">Submit</button>
  <button type="reset" class="btn btn-primary btn-danger col-md-2" >Reset</button>
</form>
					
					</div>
				
				</div>
			
			
			</div>
		
		
		</div>
	
	
	</div>

</body>
</html>