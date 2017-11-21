<?php
session_start();
$con = mysqli_connect("localhost","root","","courserec");

// Check connection
if (mysqli_connect_errno())
  {
  die("Failed to connect to MySQL: " . mysqli_connect_error());
  }
  $sql="INSERT INTO currentCourse(RollNo,CourseCode) VALUES ('".$_SESSION["RollNo"]."','".$_GET["course"]."')";
  $q = mysqli_query($con,$sql);
  //echo mysqli_error($con);
  if($q )
	{
		echo 'Y';
	}
	else
	{
		echo 'N';
	}

?>