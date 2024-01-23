<%@page import="com.entity.Usergs"%>
<%@page import="com.dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@ page errorPage="index.jsp" %>
    <%@page import="com.conn.DBConnect"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays" %>
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
  
  if(session != null  && (role.contains("usadm")||role.contains("admin"))){
%>

	
	<div class ="container p-4">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<p class="fs-3 text-center">Edit User Details:- </p>
						
						<%
							String empId = request.getParameter("id");
							UserDAO dao = new UserDAO(DBConnect.getConn());
							Usergs u = dao.getUsergsById(empId);	
							
									
						
						%>
						
						
							
<form action="updateuser" method="post">
  <div class="mb-3">
    <label  class="form-label">Employee id:-</label>
    <input type="text" value="<%=u.getEmpid()%>" name="empid" placeholder="Employee Id" class="form-control" >
   </div>
  <div class="mb-3">
    <label  class="form-label">Password:-</label>
    <input type="text" value=<%=u.getPasswd()%> name="passwd" placeholder="Password" class="form-control" >
  </div>
  
  
  <input type="hidden" name="id" value="<%=u.getEmpid() %>" >
  
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