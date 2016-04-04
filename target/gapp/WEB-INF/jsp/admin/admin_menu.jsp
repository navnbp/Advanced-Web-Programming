 <nav class="navbar navbar-inverse">
  <div class="container-fluid">
    <div class="navbar-header">
      <a class="navbar-brand" style="font-size:170%;" href="#">   </a>
    </div>
    <ul class="nav navbar-nav">
      <li class=""><a href="viewDepartment.html" style="font-size:140%;"> Home</a></li>
      <li class="dropdown">
        <a class="dropdown-toggle" data-toggle="dropdown" style="font-size:140%;" href="#">Manage Department
        <span class="caret"></span></a>
        <ul class="dropdown-menu">
          <li><a href="addDepartment.html" style="font-size:140%;">Add Department</a></li>
          <li><a href="editDepartment.html" style="font-size:140%;">Edit Department</a></li>
          <li><a href="viewDepartment.html" style="font-size:140%;">View Departments</a></li> 
        </ul>
      </li>
      <li><a href="#" style="font-size:140%;">Manage Staff</a></li> 
      <li><a href="#" style="font-size:140%;">Manage Students</a></li> 
    </ul>
    
  
      
              <ul class="nav navbar-nav navbar-right">
              <li ><a href="#" style="font-size:160%;">Welcome ${LoggedInUserInformation.firstName} </a></li> 
      <li class="active"><a href="../login.html"  style="font-size:160%;"><span class="glyphicon glyphicon-log-in"></span> Logout</a></li>
    </ul>
    
  </div>
</nav> 
