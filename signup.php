<?php
session_start();
$_SESSION["login"]=false;
?>
<!DOCTYPE html>
<html >
<head>
  <meta charset="UTF-8">
  <title>Course Recommendation System</title>
  
  <link rel="stylesheet" href="style/reset.css">

  <link rel='stylesheet prefetch' href='style/font.css'>

  <link rel="stylesheet" href="style/style.css">

  
</head>

<body>

<div class="pen-title">
  <h1>Open Elective Recommendation System</h1>
</div>
<!-- Form Module-->
<div class="module form-module">
  <div class="toggle">
  
  </div>
  <div class="form">
    <h2>Provide your details</h2>
    <form action="register" method="post">
	  <input type="text" placeholder="First Name" id="firstname" name="firstname" required/>
	  <input type="text" placeholder="Last Name" id="lastname" name="lastname" required/>
	  <input type="text" placeholder="Email ID" id="emailid" name="emailid" required/>
      <input type="text" placeholder="Roll No" id="roll" name="rollno" required/>
      <input type="password" placeholder="Password" id="password" name="password" required/>
	  <input type="hidden" name="loginmode" value="user"/>
	  <div id="roll_exists" class="col-sm-12 text-center">
            <p style="margin-bottom:0px; margin-top:10px;"><b>Roll no. already exists!</b></p>
          </div>
      <button>Signup</button>
    </form>
  </div>
  
  <div class="cta">Already have an acoount? <a href="index">Login.</a></div>
</div>
<div>

</div>
<script src='JS/jquery.js'></script>
<script>
 $(document).ready(function(){

    $("#roll_exists").css('visibility','hidden');
	
$(document.getElementById("roll")).focusout(function(){
	//console.log("funct");
            $.post("validate",
        {
          roll: this.value
        },
        function(data,status){
			//console.log(data);
           if(data=="0")
           {
            
            $("#roll_exists").css('visibility','hidden');
            }
            else if(data=="1")
            {
            
            $("#roll_exists").css('visibility','visible');
            }
        });
        });
 });
</script>

</body>
</html>