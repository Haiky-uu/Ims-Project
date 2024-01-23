<%@page import="com.entity.Personalgs"%>
<%@page import="com.dao.PersonalDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays" %>
<%@page import="com.conn.DBConnect"%>
<%@page import="java.sql.Connection"%>
<%@ page errorPage="index.jsp" %>
 <%@ taglib prefix="c" uri="jakarta.tags.core" %>
    
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
  
  if(session != null  && (role.contains("per")||role.contains("admin"))){
%>	
	
	 <div class="container p-3">
<div class="card">
<div class="card-body">
<p class="text-center fs-1">All Personal Details</p>

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
      	<th scope = "col">EmpId</th> 
		<th scope = "col">Name</th> 
		
	<!-- 	<th scope = "col">Dob</th> 
		<th scope = "col">Email</th> 
		<th scope = "col">Phone</th> 
		<th scope = "col">Gender</th> 
		<th scope = "col">Address</th> 
		<th scope = "col">Addhar</th> 
		<th scope = "col">Doj</th> -->
		
    </tr>
  </thead>
  <tbody>
  
  	<%
  	PersonalDAO dao = new PersonalDAO(DBConnect.getConn());
  	List<Personalgs> list = dao.getallPersongs();
  	
  	
  	for(Personalgs p:list){%>
  	
  	<tr>
      <th scope="row"><%=p.getEmpid() %></th>
      <td><%=p.getFname() %> <%=p.getMname() %> <%=p.getLname() %></td>
     
     
     
      <td>
      <a href ="emp_more.jsp?id=<%=p.getEmpid() %>" class="btn btn-sm btn-primary">View</a>
      <a href ="deleteper?id=<%=p.getEmpid()%>" class="btn btn-sm btn-danger ms-1">Delete</a>
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