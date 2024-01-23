<%@page import="com.entity.Personalgs"%>
<%@page import="com.dao.PersonalDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  
  if(session != null && session.getAttribute("empid")!= null && (role.contains("per")||role.contains("admin"))){
%>


	
	<div class ="container p-4">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<p class="fs-3 text-center">Edit Salary Details:- </p>
						
						<%
							String empId = request.getParameter("id");
							PersonalDAO dao = new PersonalDAO(DBConnect.getConn());
							Personalgs p = dao.getPersonalgsById(empId);
									
						
						%>
						
						
							
<form action="updateper" method="post">
  <div class="mb-3">
    <input type="hidden" value="<%=p.getEmpid()%>" name="empid" placeholder="employee id" class="form-control" >
   </div>
  <div class="mb-3">
    <label  class="form-label">Name:-</label>
    <input type="text" value=<%=p.getFname() %> name="fname" placeholder="first name" class="form-control" >
    <input type="text" value="<%=p.getMname() %>" name="mname" placeholder="middle name" class="form-control" >
    <input type="text" value="<%=p.getLname() %>" name="lname" placeholder="last name " class="form-control" >
  </div>
  <div class="mb-3">
    <label  class="form-label">Date Of Birth:-</label>
    <input type="date" value="<%=p.getDob() %>" name="dob" placeholder="date of birth" class="form-control" >
  </div>
  <div class="mb-3">
    <label  class="form-label">Email:-</label>
    <input type="text" value="<%=p.getEmail()%>" name="email" placeholder="email" class="form-control" >
  </div>
  <div class="mb-3">
    <label  class="form-label">Phone No:-</label>
    <input type="text" value="<%=p.getPhone()%>" name="phone" placeholder="phone no" class="form-control" >
  </div>
  <div class="mb-3">
    <label  class="form-label">Gender:-</label>
    <input type="text" value="<%=p.getGender() %>" name="gender" placeholder="gender" class="form-control" >
    <div class="dropdown">
  <button class="btn btn-secondary dropdown-toggle" type="button" data-bs-toggle="dropdown" aria-expanded="false">
    Gender
  </button>
  <ul class="dropdown-menu">
    <li><a class="dropdown-item" href="#"  value="m">Male</a></li>
    <li><a class="dropdown-item" href="#" value="f">Female</a></li>
    <li><a class="dropdown-item" href="#"  value=o"">Other</a></li>
  </ul>
</div>
  </div>
  <div class="mb-3">
    <label  class="form-label">Address:-</label>
    <input type="text" value="<%=p.getAddress() %>" name="address" placeholder="address" class="form-control" >
  </div>
  <div class="mb-3">
    <label  class="form-label">Addhar Id:-</label>
    <input type="text" value="<%=p.getAddhar() %>" name="addhar" placeholder="addhar id" class="form-control" >
  </div>
  <div class="mb-3">
    <label  class="form-label">Date Of Joining :-</label>
    <input type="date" value="<%=p.getDoj() %>" name="doj" placeholder="date of joining" class="form-control" >
  </div>
    
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