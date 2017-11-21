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
  $sql="Insert into coursedetails values('".$_GET["code"]."','".$_GET["name"]."','".$_GET["credit"]."','".$_GET["category"]."','".$_GET["program"]."',
  '".$_GET["Grading"]."','".$_GET["CourseLoad"]."','".$_GET["Attendance"]."','".$_GET["Practicality"]."','".$_GET["Interactivity"]."','".$_GET["rating"]."','".$_GET["votes"]."','".$_GET["description"]."')";
  
  
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