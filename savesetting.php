<?php
$con = mysqli_connect("localhost","root","","courserec");

// Check connection
if (mysqli_connect_errno())
  {
  die("Failed to connect to MySQL: " . mysqli_connect_error());
  }
  $sql="Update studentsettings set Grading=".$_GET["v1"].",CourseLoad=".$_GET["v2"].",Attendance=".$_GET["v3"].",Practicality=".$_GET["v4"].",Interactivity=".$_GET["v5"]." where RollNo='".$_GET["RollNo"]."'";
  mysqli_query($con,$sql);
  echo mysqli_error($con);
  $sql="Update studentdetails set Active=1 where RollNo='".$_GET["RollNo"]."'";
  mysqli_query($con,$sql);
?>