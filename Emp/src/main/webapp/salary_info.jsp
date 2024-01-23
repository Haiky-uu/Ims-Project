<%@page import="jakarta.websocket.SendResult"%>
<%@page import="com.entity.Salarygs"%>
<%@page import="com.dao.SalaryDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.util.List"%>
<%@page import="java.util.ArrayList"%>
<%@page import="java.util.Arrays" %>
<%@page import="com.conn.DBConnect"%>
<%@page import="java.sql.Connection"%>
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
  
  if(session != null && (role.contains("sal")||role.contains("admin"))){
%>	

	
	 <div class="container p-3">
<div class="card">
<div class="card-body">
<p class="text-center fs-1">All Salary Details</p>

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
		<th scope = "col">Salary</th> 
		<th scope = "col">H.R.A</th> 
		<th scope = "col">Special Allow</th> 
		<th scope = "col">Conveyance</th> 
		<th scope = "col">Overtime</th> 
		<th scope = "col">Leave Encashment</th> 
		<th scope = "col">E.S.I</th> 
		<th scope = "col">E.P.F</th>
		<th scope = "col">Professional Tax</th>
		<th scope = "col">T.D.S</th>
		<th scope = "col">Insurance</th>
		<th scope = "col">Advance and Misc</th>
    </tr>
  </thead>
  <tbody>
  
  	<%
  	SalaryDAO dao = new SalaryDAO(DBConnect.getConn());
  	List<Salarygs> list = dao.getallSalarygs();
  	
  	
  	for(Salarygs s:list){%>
  	
  	<tr>
      <th scope="row"><%=s.getEmpid() %></th>
      <td><%=s.getSalary() %></td>
      <td><%=s.getHra() %></td>
      <td><%=s.getSpecial() %></td>
      <td><%=s.getConveyance() %></td>
      <td><%=s.getOvertime() %></td>
      <td><%=s.getLeave() %></td>
      <td><%=s.getEsi() %></td>
      <td><%=s.getEpf() %></td>
      <td><%=s.getTax() %></td>
      <td><%=s.getTds() %></td>
      <td><%=s.getInsurance() %></td>
      <td><%=s.getAdv() %></td>
      
      <td>
      <a href ="edit_salary.jsp?id=<%=s.getId() %>" class="btn btn-sm btn-primary">Edit</a>
      <a href ="deletesal?id=<%=s.getId() %>" class="btn btn-sm btn-danger ms-1">Delete</a>
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