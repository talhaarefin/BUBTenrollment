
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

       
      </div><!-- /.container -->
    </div><!-- /.navbar -->

    </div>
<?php
 if (logged_in()) {
?>
   <script type="text/javascript">
            window.location = "home.php";
    </script>
    <?php
}
include("banner.php") ?>

<?php
if (isset($_POST['btnlogin'])) {
    //form has been submitted1
    
    $uname = trim($_POST['uname']);
    $upass = trim($_POST['pass']);
    
    $h_upass = sha1($upass);
    //check if the email and password is equal to nothing or null then it will show message box
    if ($uname == '' OR $upass == '') {
?>    <script type="text/javascript">
                alert("Invalid Username and Password!");
                </script>
            <?php
        
    } else {
		//it creates a new objects of member
        $user = new User();
		//make use of the static function, and we passed to parameters
		$res = $user::AuthenticateUser($uname, $h_upass);
		//then it check if the function return to true
		if($res == true){
			?>   <script type="text/javascript">
					//then it will be redirected to home.php
					window.location = "index.php";
				</script>
			<?php
		
		
		} else {
?>    <script type="text/javascript">
                alert("Username or Password Not Registered! Contact Your administrator.");
                window.location = "index.php";
                </script>
        <?php
        }
        
    }
} else {
    
    $email = "";
    $upass = "";
    
}

?>

<div class="container">
		
		<div class="col-xs-12 col-sm-9">
			<div class="rows">
				<div class="well">
					<fieldset>
						<legend><h4 class="text-center">Mission And Vision</h4></legend>
							<p>The University has been established to provide education with unique quality relevant to the needs of the modern society. With this end in view the courses and curricula of BUBT are so designed as to enable the students to pursue higher education and professional goals with a sound academic background. This will help the students to equip themselves as creative leaders to contribute to the socio-economic development of Bangladesh.</p>
					</fieldset>	
					<fieldset>
						<legend><h4 class="text-center">Objectives</h4></legend>
							<p>The principal objective of Bangladesh University of Business and Technology (BUBT) is to produce highly skilled manpower capable of contributing to the national development as entrepreneurs, academics, professionals and administrators.<br>

					The following objectives are within the focus of overall activities of BUBT:<br>

					  1. To maintain an excellent academic environment for imparting higher education to <br>learners in different fields<br>
					  2. To encourage learners to inculcate ethical, cultural and social values in their<br> thoughts, actions and practices and follow them in their personal and national life<br>
					  3. To build up a dynamic center of excellence in higher education & research which will<br> generate knowledge for the creation of an ideal society<br>
					  4. To develop learners' understanding of the advances in knowledge and complexities of <br>modern world and utilize these for solution of problems of the contemporary society.<br>
</p>
					</fieldset>	

					
				</div>
			</div>
		</div>
		<!--/span--> 
		<?php include("sidebar.php") ?>
		</div>
	<!--/row-->
	
	<hr>
	<?php include("footer.php") ?>
