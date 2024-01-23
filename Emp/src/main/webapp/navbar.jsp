


<nav class="navbar navbar-expand-lg navbar-dark bg-primary">

  <div class="container-fluid">
    <a class="navbar-brand" href="front.jsp">Employee Management System</a>
    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
      <span class="navbar-toggler-icon"></span>
    </button>
    <div class="collapse navbar-collapse" id="navbarSupportedContent">
     
      <ul class="navbar-nav me-auto mb-2 mb-lg-0">
    
       <li class="nav-item dropdown">
          <a class="nav-link " href="#" id = "navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expended="false"> Register</a>
        <ul class="dropdown-menu bg-light" aria-labelledby="navbarDropdown">
        	<li><a href="add_person.jsp" class="dropdown-item">New Register</a></li>
        	<li><a href="emp_info.jsp" class="dropdown-item">Register Info</a></li>
         </ul>
        </li>
       
        <li class="nav-item dropdown">
          <a class="nav-link " href="#" id = "navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expended="false"> Personal</a>
        <ul class="dropdown-menu bg-light" aria-labelledby="navbarDropdown">
        	<li><a href="add_personal.jsp" class="dropdown-item">New Personal</a></li>
        	<li><a href="personal_info.jsp" class="dropdown-item">Personal Info</a></li>
	    	<li><a href ="my_personal_info.jsp?id=<%=session.getAttribute("empid")%>" class="dropdown-item">My Personal Info</a></li>
			
         </ul>
        </li>
      
       	<li class="nav-item dropdown">
          <a class="nav-link" href="#" id = "navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expended="false"> Salary</a>
        <ul class="dropdown-menu bg-light" aria-labelledby="navbarDropdown">
        	<li><a href="add_salary.jsp" class="dropdown-item">New Salary</a></li>
        	<li><a href="salary_info.jsp" class="dropdown-item">Salary Info</a></li>
         </ul>
        </li>
        
        <li class="nav-item dropdown">
          <a class="nav-link" href="#" id = "navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expended="false"> User Admin</a>
        <ul class="dropdown-menu bg-light" aria-labelledby="navbarDropdown">
        	<li><a href="add_user.jsp" class="dropdown-item">Add User</a></li>
        	<li><a href="user_info.jsp" class="dropdown-item">User Info</a></li>
         </ul>
        </li>
        
              	
        
      </ul>
      
    </div>
    
    <form class="d-flex" action="" method="post">
   	 			
   	 			<ul><a href="index.jsp" type="submit" class="btn  btn-warning" name="login" value="Login"  >Login</a></ul>
   	 </form>
   	  <form class="d-flex" action="logout" method="post">
   	 			<ul><button type="submit" class="btn  btn-danger" name="logout" value="Logout" >Logout</button></ul>
   	 			     
   	 </form>
        
        
  </div>
</nav>



