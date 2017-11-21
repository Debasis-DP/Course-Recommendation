<!DOCTYPE html>
<script>
var list;
var gcode;
var gname;
</script>
<div onload="check()">
<h2>Enter student details</h2>
<form action="dept" method="post">
<label>Enter the Student Roll no:</label>
<input type="text" name="roll" id="roll" required /><br/><br/>
<label>Enter the First Name:</label>
<input type="text" name="firstname" id="firstname" required />
<br/><br/>
<label>Enter the Last Name:</label>
<input type="text" name="lastname" id="lastname" required />
<br/><br/>
<label>Enter the birthdate(YYYY-MM-DD):</label>
<input type="text" name="date" id="date" required />
<br/><br/>

<label>Enter the Blood group:</label>
<input type="text" name="blood" id="blood" required />
<br/><br/>
<label>Enter Mobile Number:</label>
<input type="text" name="mob" id="mob" required />
<br/><br/>
<label>Enter Address:</label>
<input type="text" name="address" id="address" required />
<br/><br/>
<label>Enter Residential Status:</label>
<input type="text" name="res" id="res" required />
<br/><br/>
<label>Enter Email ID:</label>
<input type="text" name="email" id="email" required />
<br/><br/>
<input type="button" name="submit" value="Add Entry" onclick="addstudent()"/>
<!-- <input type="button" name="submit1" value="Edit Entry" onclick="editdept()"/> -->
<br/><br/>
</form>
<b><label id="error" style="color:red;"></label></b>
</div>
<div>
<h2>List of Departments</h2>
<div id="deptcontent"></div>
</div>
<script>
check();
function check(){
	var xhttp = new XMLHttpRequest();
	var htmlcontent="";
     xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
	list=JSON.parse(xhttp.responseText);
	htmlcontent="<table><tr><th>Roll No.</th><th>Student Name</th><th>Phone No.</th><th>Email ID</th><th>Action</th></tr>";
	for(var i=0;i<list.departments.length;i++){
		var counter=list.departments[i];
		htmlcontent=htmlcontent+"<tr><td>"+counter["RollNo"]+"</td><td>"+counter["FirstName"]+" "+counter["LastName"]+"</td><td>"+counter["MobileStudent"]+"   "+"</td><td>"+counter["Email"]+"</td>";
		htmlcontent=htmlcontent+"<td><button onclick=deletestud('"+counter['RollNo']+"')>Delete</button></td></tr>";
		//<button onclick=\"fill('"+counter["deptid"]+"','"+counter["deptname"]+"')\">Edit</button>
	}
	htmlcontent=htmlcontent+"</table>"
	document.getElementById("deptcontent").innerHTML=htmlcontent;
	}
	 }
  xhttp.open("GET", "listofstudent", true);
  xhttp.send(null);
}
function addstudent(){
	var xhttp = new XMLHttpRequest();
	var htmlcontent="";
     xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
		console.log(xhttp.responseText);
	msg=JSON.parse(xhttp.responseText);
	if(msg.error){
		alert("Something went wrong. Check the code");
	}else{
		alert("New entry added.");
		document.getElementById("roll").value="";
		document.getElementById("firstname").value="";
		check();
	}
	}
	 }
	 var roll=document.getElementById("roll").value;
	 var firstname=document.getElementById("firstname").value;
	 var lastname=document.getElementById("lastname").value;
	 var date=document.getElementById("date").value;
	 var blood=document.getElementById("blood").value;
	 var mob=document.getElementById("mob").value;
	 var address=document.getElementById("address").value;
	 var res=document.getElementById("res").value;
	 var email=document.getElementById("email").value;
	 if(roll.length>0 && firstname.length>0){
	document.getElementById("error").innerHTML="";
	xhttp.open("GET", "addstudent?roll="+roll+"&firstname="+firstname+"&lastname="+lastname+"&date="+date+"&blood="+blood+"&mob="+mob+"&address="+address+"&res="+res+"&email="+email, true);
	 xhttp.send(null);
	 }else{
		 document.getElementById("error").innerHTML="Input Fields can't be empty";
	 }
}
function fill(code,name){
	document.getElementById('code').value=code;
	document.getElementById('name').value=name;
	gcode=code;
	gname=name;
}
function editdept(){
	var xhttp = new XMLHttpRequest();
	var htmlcontent="";
     xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
	msg=JSON.parse(xhttp.responseText);
	if(msg.error){
		alert("Something went wrong. Check the code");
	}else{
		alert("Entry edited.");
		document.getElementById("code").value="";
		document.getElementById("name").value="";
		check();
	}
	}
	 }
	 var code=document.getElementById("code").value;
	 var name=document.getElementById("name").value;
	 if(name!==gname || code!==gcode){
	document.getElementById("error").innerHTML="";
	xhttp.open("GET", "editdept?code="+code+"&name="+name+"&gcode="+gcode, true);
	 xhttp.send(null);
	 }else{
		 document.getElementById("error").innerHTML="No changes to be saved";
	 }
}
function deletestud(code){
	if (confirm("Delete the  Entry?") == true) {
    var xhttp = new XMLHttpRequest();
     xhttp.onreadystatechange = function() {
    if (this.readyState == 4 && this.status == 200) {
	msg=JSON.parse(xhttp.responseText);
	if(msg.error){
		alert("Something went wrong.");
	}else{
		alert("Entry Deleted successfully.");
		location.reload();
		document.getElementById("roll").value="";
		document.getElementById("firstname").value="";
		check();
	}
	}
	 }
	document.getElementById("error").innerHTML="";
	xhttp.open("GET", "delstud?code="+code, true);
	 xhttp.send(null);

} else {
    txt = "You pressed Cancel!";
}
}
</script>
