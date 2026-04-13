<?php require_once("includes/initialize.php");?>
<!DOCTYPE html>
<html lang="en">
<head>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>BUBT Enrollment System</title>

<!-- Bootstrap core CSS -->
<link href="css/bootstrap.min.css" rel="stylesheet">
<link href="css/bootstrap-datetimepicker.min.css" rel="stylesheet" media="screen">
<!-- Custom styles for this template -->
<link href="offcanvas.css" rel="stylesheet">
  <?php
  
  confirm_logged_in();

  ?>
</head>
<body>
    <div class="navbar navbar-fixed-top navbar-inverse" role="navigation">
      <div class="container">
        <div class="navbar-header">
          <button type="button" class="navbar-toggle" data-toggle="collapse" data-target=".navbar-collapse">
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
            <span class="icon-bar"></span>
          </button>
          <a class="navbar-brand" href="index.php">BUBT Enrollment System</a>
        </div>
        <div class="collapse navbar-collapse">
          <ul class="nav navbar-nav">
            <li class="active"><a href="index.php">Home</a></li>
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Entry<b class="caret"></b></a>
                <ul class="dropdown-menu">
                  <li><a href="studFilter.php">Student</a></li>
                  <li><a href="subjectFilter.php">Subject</a></li>
                  <li><a href="courseFilter.php">Program</a></li>
                  <li><a href="listofdept.php">Department</a></li>
                  <li><a href="facultyFilter.php">Faculty</a></li>
                 
                </ul>  

            </li>
             
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Class And Subjects<b class="caret"></b></a>
                <ul class="dropdown-menu">
                   <li><a href="listofclass.php">List of class</a></li>
                   <li><a href="Student_advicesubject.php">Advising of Subjects</a></li>
                             
                </ul>  

            </li>
            
                      
            <li class="dropdown">
              <a href="#" class="dropdown-toggle" data-toggle="dropdown">Settings <b class="caret"></b></a>
              <ul class="dropdown-menu">
                <li><a href="listofuser.php">Manage User</a></li>
                
                <li><a href="#">Others</a></li>
                <li><a href="logout.php">Logout</a></li>
              </ul>  
            </li>
      

          </ul>
             <div class="navbar-collapse collapse">
    
      </div><!--/.navbar-collapse -->
        </div><!-- /.nav-collapse -->
      </div><!-- /.container -->
    </div><!-- /.navbar -->

    </body>
