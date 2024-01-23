<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
      <%@page import="java.util.List"%>
      <%@ page errorPage="index.jsp" %>
    
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file= "all_css.jsp" %>
</head>
<body class="bg-light"> 
	<%@include file="navbar.jsp" %>
	<%session=request.getSession(false);
  List<String> role = (List<String>)session.getAttribute("role");
  
  if(session != null  && (role.contains("usadm")||role.contains("admin"))){
%>

	
	<div class ="container p-4">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<p class="fs-3 text-center">Add New User</p>
						
						<c:if test="${not empty succMsg }">
							<p class="text-center text-success">${succMsg }</p>
							<c:remove var="succMsg"/>
						</c:if>
						
						<c:if test="${not empty errorMsg }">
							<p class="text-center text-error">${errorMsg }</p>
							<c:remove var="errorMsg"/>
						</c:if>
						
													
<form action= "adduser" method="post">
 <div class="mb-3">
    <label  class="form-label">Emp id:</label>
    <input type="text" name="empid" placeholder="empid" class="form-control" maxlength="5">
  </div>
  <div class="mb-3">
    <label  class="form-label">Password:</label>
    <input type="text" name="passwd" placeholder="password" class="form-control" >
  </div>
  
 
  
  
  <button type="submit" class="btn btn-primary col-md-12">Submit</button>
</form>
					
					</div>
				
				</div>
			
			
			</div>
		
		
		</div>
	
	
	</div>
	<%}else{
	 response.sendRedirect("front.jsp");
} %>

</body>
</html>