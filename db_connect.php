<?php
session_start();
	$_SESSION["host"] = "localhost";
	$_SESSION["db_user"] = "root";
	$_SESSION["db_password"] = "";
    $_SESSION["db_name"]="courserec";
    $con=mysqli_connect($_SESSION["host"],$_SESSION["db_user"],$_SESSION["db_password"],$_SESSION["db_name"]) or die("Failed to connect to MySQL: " . mysqli_error($con));
	
?>