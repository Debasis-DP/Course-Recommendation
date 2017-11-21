<?php
session_start();
$con = mysqli_connect("localhost","root","","courserec");

// Check connection
if (mysqli_connect_errno())
  {
  die("Failed to connect to MySQL: " . mysqli_connect_error());
  }

$roll = $_POST["roll"];
if($roll == '')
	echo '00';
else{
	$sql="SELECT * from studentdetails where RollNo='".$roll."'";
	$ret=mysqli_query($con,$sql);
	$count=mysqli_num_rows($ret);
	if($count==1)
		echo '1';
	else
		echo '0';

}  
?>