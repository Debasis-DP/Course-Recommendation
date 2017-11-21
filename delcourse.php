<?php
$response=array();
class DelCrse{
	function DelCourse(){
		$con = mysqli_connect("localhost","root","","courserec");
        global $response;
// Check connection
if (mysqli_connect_errno())
  {
  die("Failed to connect to MySQL: " . mysqli_connect_error());
  }
  $sql="delete from coursedetails where CourseCode='".$_GET["code"]."'";
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
$s=new DelCrse();
$s->DelCourse();
?>