<?php
$response=array();
class DelStud{
	function DelStudent(){
		$con = mysqli_connect("localhost","root","","courserec");
        global $response;
// Check connection
if (mysqli_connect_errno())
  {
  die("Failed to connect to MySQL: " . mysqli_connect_error());
  }
  $sql="delete from studentdetails where RollNo='".$_GET["code"]."'";
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
$s=new DelStud();
$s->DelStudent();
?>