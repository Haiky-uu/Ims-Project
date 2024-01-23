<%@page import="com.entity.Salarygs"%>
<%@page import="com.dao.SalaryDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.conn.DBConnect"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays" %>
<%@ page errorPage="index.jsp" %>
    <%@ page isELIgnored = "false" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<%@include file= "all_css.jsp" %>
</head>
<body class="bg-light">
	<%@include file= "navbar.jsp"%>
<%session=request.getSession(false);
  List<String> role = (List<String>)session.getAttribute("role");
  
  if(session != null && (role.contains("sal")||role.contains("admin"))){
%>	

	
	<div class ="container p-4">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<p class="fs-3 text-center">Edit Salary Details:- </p>
						
						<%
							int id = Integer.parseInt(request.getParameter("id"));
							SalaryDAO dao = new SalaryDAO(DBConnect.getConn());	
							Salarygs s = dao.getSalarygsById(id);
									
						
						%>
						
						
							
<form action="updatesalary" method="post">
  <div class="mb-3">
    <label  class="form-label">Employee id:-</label>
    <input type="text" value="<%=s.getEmpid()%>" name="empid" placeholder="employee id" class="form-control" >
   </div>
  <div class="mb-3">
    <label  class="form-label">Salary:-</label>
    <input type="text" value=<%=s.getSalary() %> name="salary" placeholder="salary/wages" class="form-control" >
  </div>
  <div class="mb-3">
    <label  class="form-label">H.R.A:-</label>
    <input type="text" value="<%=s.getHra() %>" name="hra" placeholder="house rent allowance " class="form-control" >
  </div>
  <div class="mb-3">
    <label  class="form-label">Special Allow:-</label>
    <input type="text" value="<%=s.getSpecial() %>" name="special" placeholder="special allowance/D.A. " class="form-control" >
  </div>
  <div class="mb-3">
    <label  class="form-label">Conveyance:-</label>
    <input type="text" value="<%=s.getConveyance() %>" name="conveyance" placeholder="conveyance" class="form-control" >
  </div>
  <div class="mb-3">
    <label  class="form-label">Overtime:-</label>
    <input type="text" value="<%=s.getOvertime()%>" name="overtime" placeholder="overtime" class="form-control" >
  </div>
  <div class="mb-3">
    <label  class="form-label">Leave Encashment:-</label>
    <input type="text" value="<%=s.getLeave() %>" name="leave" placeholder="leave encashment" class="form-control" >
  </div>
  <div class="mb-3">
    <label  class="form-label">E.S.I:-</label>
    <input type="text" value="<%=s.getEsi() %>" name="esi" placeholder="employee state insurance/medical allowance" class="form-control" >
  </div>
  <div class="mb-3">
    <label  class="form-label">E.P.F:-</label>
    <input type="text" value="<%=s.getEpf() %>" name="epf" placeholder="employee providend fund" class="form-control" >
  </div>
  <div class="mb-3">
    <label  class="form-label">Professional Tax:-</label>
    <input type="text" value="<%=s.getTax() %>" name="tax" placeholder="professional tax" class="form-control" >
  </div>
  <div class="mb-3">
    <label  class="form-label">T.D.S:-</label>
    <input type="text" value="<%=s.getTds() %>" name="tds" placeholder="income tax/tax deducted at source" class="form-control" >
  </div>
  <div class="mb-3">
    <label  class="form-label">Insurance:-</label>
    <input type="text" value="<%=s.getInsurance()%>" name="insurance" placeholder="insurance" class="form-control" >
  </div>
  <div class="mb-3">
    <label  class="form-label">Advance and Misc:-</label>
    <input type="text" value="<%=s.getAdv() %>" name="adv" placeholder="advance and miscellaneous" class="form-control" >
  </div>
  
  
  <input type="hidden" name="id" value="<%=s.getId() %>" >
  
  <button type="submit" class="btn btn-primary col-md-12">Update</button>
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