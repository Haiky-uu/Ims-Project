<%@page import="com.entity.Persongs"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays" %>
<%@page import="com.dao.PersonDAO"%>
<%@page import="com.conn.DBConnect"%>
<%@page import="java.sql.Connection"%>
 <%@ taglib prefix="c" uri="jakarta.tags.core" %>
 <%@ page errorPage="index.jsp" %>
    
    <%@ page isELIgnored = "false" %>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
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
  
  if(session != null  && (role.contains("rec")||role.contains("admin"))){
%>
	 <div class="container p-3">
<div class="card">
<div class="card-body">
<p class="text-center fs-1">All Employee Details</p>

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
      	<th scope = "col">First name</th> 
		<th scope = "col">Middle name</th> 
		<th scope = "col">Last name</th> 
		<th scope = "col">Date of Birth</th> 
		<th scope = "col">Email</th> 
		<th scope = "col">Phone</th> 
		<th scope = "col">Address</th> 
		<th scope = "col">Position</th> 
		<th scope = "col">Qualification</th>
		<th scope = "col">Action</th>
    </tr>
  </thead>
  <tbody>
  
  	<%
  	PersonDAO dao =new PersonDAO(DBConnect.getConn());
  	List<Persongs> list = dao.getallPersongs();
  	
  	for(Persongs p:list){%>
  	
  	<tr>
      <th scope="row"><%=p.getFname() %></th>
      <td><%=p.getMname() %></td>
      <td><%=p.getLname() %></td>
      <td><%=p.getDob() %></td>
      <td><%=p.getEmail() %></td>
      <td><%=p.getPhone() %></td>
      <td><%=p.getAddress() %></td>
      <td><%=p.getPosition() %></td>
      <td><%=p.getQualification() %></td>
      <td>
      <a href ="edit_person.jsp?id=<%=p.getId() %>" class="btn btn-sm btn-primary">Edit</a>
      <a href ="delete?id=<%=p.getId() %>" class="btn btn-sm btn-danger ms-1">Delete</a>
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