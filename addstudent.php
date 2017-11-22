<?php
$response=array();
class AddCrse{
	function AddCourse(){
		$con = mysqli_connect("localhost","root","","courserec");
        global $response;
// Check connection
if (mysqli_connect_errno())
  {
  die("Failed to connect to MySQL: " . mysqli_connect_error());
  }
 $sql = "INSERT INTO studentdetails(RollNo, FirstName, LastName, Dept, Program, DateOfBirth, BloodGroup, MobileParent, MobileStudent, Address, ResStatus, Password, Active, ImageFile, Email) 
  VALUES ('".$_GET["roll"]."','".$_GET["firstname"]."','".$_GET["lastname"]."','Computer Science and Engineering','B.Tech','".$_GET["date"]."','".$_GET["blood"]."','".$_GET["mob"]."','".$_GET["mob"]."','".$_GET["address"]."','".$_GET["res"]."','password','1','dummy.jpg','".$_GET["email"]."')";
  
  
  if(mysqli_query($con,$sql))
	{	
	$response["error"]=false;
	$response["sql"] = $sql;
	$response["sql_error"] = mysqli_error($con);
		
	}else{
	$response["error"]=true;
	$response["sql"] = $sql;
	$response["sql_error"] = mysqli_error($con);
	}
      echo json_encode($response);  
	}
}
$s=new AddCrse();
$s->AddCourse();
?>