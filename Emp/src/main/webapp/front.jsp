<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page isErrorPage="true" %>  
<%@ page errorPage="index.jsp" %>
<!DOCTYPE html>
<html>
<head>
 <%@include file="navbar.jsp" %>
<%@include file="all_css.jsp"%>
<style type="text/css">

 .container {
    text-align: center;
    margin-top: 100px;
}

h1 {
    font-size: 28px;
}

.actions {
    margin-top: 50px;
}

.button {
    display: inline-block;
    padding: 10px 20px;
    margin: 10px;
    font-size: 18px;
    border: none;
    background-color: #337ab7;
    color: white;
    cursor: pointer;
}

.button:hover {
    background-color: #23527c;
}
</style>

    <title>Employee Management System</title>
    <link rel="stylesheet" type="text/css" href="styles.css">
    <script src="script.js"></script>
</head>
<body>


    <div class="container">
        <h1>Welcome to the Employee Management System</h1>
        
        <div class="actions">
            <button class="button" onclick="recruitEmployees()"> Employees Recruit</button>
            <button class="button" onclick="perEmployees()">Employee Personal</button>
            <button class="button" onclick="salEmployees()">Employee Salary</button>
        </div>
        <div class="actions">
            <button class="button" onclick="showrecruitEmployees()"> Recruitment Details</button>
            <button class="button" onclick="showperEmployees()">Personal Details</button>
            <button class="button" onclick="showsalEmployees()">Emp Salary Details</button>
        </div>
    </div>

    <script>
        function recruitEmployees() {
            window.location.href = "add_person.jsp";
        }
		function  showrecruitEmployees() {
			window.location.href = "emp_info.jsp";
		}
        function perEmployees() {
            window.location.href = "add_personal.jsp";
        }
        function showperEmployees() {
			window.location.href = "personal_info.jsp";
		}
        function salEmployees() {
            window.location.href = "add_salary.jsp";
        }
        function showsalEmployees() {
			window.location.href = "salary_info.jsp";
		}
    </script>
</body>
</html>
