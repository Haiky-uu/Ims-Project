<%@page import="com.entity.Usergs"%>
<%@page import="com.dao.UserDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
 <%@page import="java.util.List"%>
 <%@page import="java.sql.Connection"%>
<%@page import="com.conn.DBConnect"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>

<%@include file= "all_css.jsp" %>
</head>
<body class="bg-light">
<%session=request.getSession(false);
  List<String> role = (List<String>)session.getAttribute("role");
  
  if(session != null  && (role.contains("usadm")||role.contains("admin"))){
%>	
<%@include file="navbar.jsp" %>	
	
	 <div class="container p-3">
<div class="card">
<div class="card-body">
<p class="text-center fs-1">All User Details</p>

						<c:if test="${not empty succMsg }">
							<p class="text-center text-success">${succMsg }</p>
							<c:remove var="succMsg"/>
						</c:if>
						
						<c:if test="${not empty errorMsg }">
							<p class="text-center text-error">${errorMsg }</p>
							<c:remove var="errorMsg"/>
						</c:if>

	<table class="table">
  <thead>
    <tr>
      	<th scope = "col">Emp id</th> 
		<th scope = "col">Password</th> 
		
    </tr>
  </thead>
  <tbody>
  
  	<%
  	UserDAO dao = new UserDAO(DBConnect.getConn());
  	List<Usergs> list = dao.getallUsers();
  	
  	
  	for(Usergs s:list){%>
  	
  	<tr>
      <th scope="row"><%=s.getEmpid() %></th>
      <td><%=s.getPasswd() %></td>
      
      
      <td>
      <a href ="edit_user.jsp?id=<%=s.getEmpid() %>" class="btn btn-sm btn-primary">Edit</a>
      <a href ="deleteusr?id=<%=s.getEmpid() %>" class="btn btn-sm btn-danger ms-1">Delete</a>
      </td>
      
    </tr>
  		
  		
  		
  	<%}
  	
  	%>
      
  </tbody>
</table>

</div>
</div>
</div>
<%}else{
	 response.sendRedirect("front.jsp");
} %>


</body>
</html>