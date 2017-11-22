<?php
session_start();
$con = mysqli_connect("localhost","root","","courserec");

// Check connection
if (mysqli_connect_errno())
  {
  die("Failed to connect to MySQL: " . mysqli_connect_error());
  }
$username=$_POST['rollno'];
$password=$_POST['password'];
$loginmode=$_POST['loginmode'];
$firstname = $_POST['firstname'];
$lastname = $_POST['lastname'];
$email = $_POST['emailid'];

if($username != '' || $firstname != '' || $email != ''){
	$sql1 = "INSERT into studentdetails(RollNo,FirstName,LastName,Password,Email) VALUES ('".$username."','".$firstname."','".$lastname."','".$password."','".$email."')";
	$sql2 = "INSERT into studentdetails(RollNo,FirstName,LastName,Password,Email) VALUES ('".$username."','".$firstname."','".$lastname."','".$password."','".$email."')";
	$q1 = mysqli_query($con,$sql);
	$q2 = mysqli_query($con,$sql);
	if($q1 && $q2 )
	{
		header("Location:index");
		mysqli_close($con);
		exit();
	}
	else
	{
		echo 'N';
		exit();
	}
}
?>