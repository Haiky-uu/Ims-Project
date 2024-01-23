<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
     <%@ taglib prefix="c" uri="jakarta.tags.core" %>
     <%@ page errorPage="index.jsp" %>
 <%@page import="java.util.List"%>
    <%@ page isELIgnored = "false" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file= "all_css.jsp" %>
</head>
<body class="bg-light"> 
<%@include file="navbar.jsp" %>


	
	<div class ="container p-4">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<p class="fs-3 text-center">Recruitment Form </p>
						
						<c:if test="${not empty succMsg }">
							<p class="text-center text-success">${succMsg }</p>
							<c:remove var="succMsg"/>
						</c:if>
						
						<c:if test="${not empty errorMsg }">
							<p class="text-center text-error">${errorMsg }</p>
							<c:remove var="errorMsg"/>
						</c:if>
							
<form action="register" method="post">
  <div class="mb-3">
    <label  class="form-label">Name</label>
    <input type="text" name="fname" placeholder="first name" class="form-control" >
    <input type="text" name="mname" placeholder="middle name" class="form-control" >
    <input type="text" name="lname" placeholder="last name" class="form-control" >
  </div>
  <div class="mb-3">
    <label  class="form-label">Date Of Birth:</label>
    <input type="date" name="dob" class="form-control" >
  </div>
  <div class="mb-3">
    <label  class="form-label">Email:</label>
    <input type="text" name="email" placeholder="Email" class="form-control" >
  </div>
  <div class="mb-3">
    <label  class="form-label">Phone No:</label>
    <input type="text" name="phone" placeholder="phone no" class="form-control" >
  </div>
  <div class="mb-3">
    <label  class="form-label">Address:</label>
    <input type="text" name="address" placeholder="address" class="form-control" >
  </div>
  <div class="mb-3">
    <label  class="form-label">Position:</label>
    <input type="text" name="position" placeholder="position" class="form-control" >
  </div>
  <div class="mb-3">
    <label  class="form-label">Qualification:</label>
    <input type="text" name="qualification" placeholder="qualification" class="form-control" >
  </div>
  
 <!--  <div class="mb-3">
    <label  class="form-label">Resume:</label>
    <input type="file" name="file" class="form-control" >
  </div> -->
  
  
  <button type="submit" class="btn btn-primary col-md-12">Submit</button>
</form>
					
					</div>
				
				</div>
			
			
			</div>
		
		
		</div>
	
	
	</div>

</body>
</html>