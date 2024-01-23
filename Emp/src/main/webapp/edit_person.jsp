<%@page import="com.entity.Persongs"%>
<%@page import="com.conn.DBConnect"%>
<%@page import="com.dao.PersonDAO"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored = "false"%>
    <%@ taglib prefix="c" uri="jakarta.tags.core" %>
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
  
  if(session != null  && (role.contains("rec")||role.contains("admin"))){
%>

	
	<div class ="container p-4">
		<div class="row">
			<div class="col-md-6 offset-md-3">
				<div class="card">
					<div class="card-body">
						<p class="fs-3 text-center">Edit Employee </p>
						
						<%
							int id = Integer.parseInt(request.getParameter("id"));
							PersonDAO dao = new PersonDAO(DBConnect.getConn());
							Persongs p = dao.getPersongsById(id);
							
							
						
						%>
						
						
							
<form action="update" method="post">
  <div class="mb-3">
    <label  class="form-label">Name</label>
    <input type="text" value="<%=p.getFname() %>" name="fname" placeholder="first name" class="form-control" >
    <input type="text" value="<%=p.getMname()%>" name="mname" placeholder="middle name" class="form-control" >
    <input type="text" value="<%=p.getLname() %>" name="lname" placeholder="last name" class="form-control" >
  </div>
  <div class="mb-3">
    <label  class="form-label">Date Of Birth:</label>
    <input type="date" value="<%=p.getDob() %>" name="dob" class="form-control" >
  </div>
  <div class="mb-3">
    <label  class="form-label">Email:</label>
    <input type="text" value="<%=p.getEmail() %>" name="email" placeholder="Email" class="form-control" >
  </div>
  <div class="mb-3">
    <label  class="form-label">Phone No:</label>
    <input type="text" value="<%=p.getPhone() %>" name="phone" placeholder="phone no" class="form-control" >
  </div>
  <div class="mb-3">
    <label  class="form-label">Address:</label>
    <input type="text" value="<%=p.getAddress() %>" name="address" placeholder="address" class="form-control" >
  </div>
  <div class="mb-3">
    <label  class="form-label">Position:</label>
    <input type="text" value="<%=p.getPosition() %>" name="position" placeholder="position" class="form-control" >
  </div>
  <div class="mb-3">
    <label  class="form-label">Qualification</label>
    <input type="text" value="<%=p.getQualification() %>" name="qualification" placeholder="qualification" class="form-control" >
  </div>
  
  <input type="hidden" name="id" value="<%=p.getId() %>" >
  
  <button type="submit" class="btn btn-primary col-md-12">Update</button>
</form>
					
					</div>
				
				</div>
			
			
			</div>
		
		
		</div>
	
	
	</div>

<%
} else {
    // Redirect to the login page if the session is invalid or the username attribute is not set
    response.sendRedirect("front.jsp");
}
%>

</body>
</html>