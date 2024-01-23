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
<%session=request.getSession(false);
  List<String> role = (List<String>)session.getAttribute("role");
  
  if(session != null  && (role.contains("sal")||role.contains("admin"))){
%>	

	
	<div class ="container p-4">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<p class="fs-3 text-center">Add Salary Details </p>
						
						<c:if test="${not empty succMsg }">
							<p class="text-center text-success">${succMsg }</p>
							<c:remove var="succMsg"/>
						</c:if>
						
						<c:if test="${not empty errorMsg }">
							<p class="text-center text-error">${errorMsg }</p>
							<c:remove var="errorMsg"/>
						</c:if>
							
<form action="salregister" method="post">
  <div class="mb-3">
    <label  class="form-label">Employee id:-</label>
    <input type="text" name="empid" placeholder="employee id" maxlength="5" class="form-control" >
   </div>
  <div class="mb-3">
    <label  class="form-label">Salary:-</label>
    <input type="text" name="salary" placeholder="salary/wages" class="form-control" >
  </div>
  <div class="mb-3">
    <label  class="form-label">H.R.A:-</label>
    <input type="text" name="hra" placeholder="house rent allowance " class="form-control" >
  </div>
  <div class="mb-3">
    <label  class="form-label">Special Allow:-</label>
    <input type="text" name="special" placeholder="special allowance/D.A. " class="form-control" >
  </div>
  <div class="mb-3">
    <label  class="form-label">Conveyance:-</label>
    <input type="text" name="conveyance" placeholder="conveyance" class="form-control" >
  </div>
  <div class="mb-3">
    <label  class="form-label">Overtime:-</label>
    <input type="text" name="overtime" placeholder="overtime" class="form-control" >
  </div>
  <div class="mb-3">
    <label  class="form-label">Leave Encashment:-</label>
    <input type="text" name="leave" placeholder="leave encashment" class="form-control" >
  </div>
  <div class="mb-3">
    <label  class="form-label">E.S.I:-</label>
    <input type="text" name="esi" placeholder="employee state insurance/medical allowance" class="form-control" >
  </div>
  <div class="mb-3">
    <label  class="form-label">E.P.F:-</label>
    <input type="text" name="epf" placeholder="employee providend fund" class="form-control" >
  </div>
  <div class="mb-3">
    <label  class="form-label">Professional Tax:-</label>
    <input type="text" name="tax" placeholder="professional tax" class="form-control" >
  </div>
  <div class="mb-3">
    <label  class="form-label">T.D.S:-</label>
    <input type="text" name="tds" placeholder="income tax/tax deducted at source" class="form-control" >
  </div>
  <div class="mb-3">
    <label  class="form-label">Insurance:-</label>
    <input type="text" name="insurance" placeholder="insurance" class="form-control" >
  </div>
  <div class="mb-3">
    <label  class="form-label">Advance and Misc:-</label>
    <input type="text" name="adv" placeholder="advance and miscellaneous" class="form-control" >
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