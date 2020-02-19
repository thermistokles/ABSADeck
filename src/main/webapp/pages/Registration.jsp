<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>

body {
  margin: 0;
  font-family: Arial, Helvetica, sans-serif;
}

.topnav {
  overflow: hidden;
  background-color: #870A3C;
}

.topnavs {
  overflow: hidden;
  background-color: #640032;
}

.topnav a {
  float: left;
  color: #870A3C;
  text-align: center;
  padding: 14px 16px;
  text-decoration: none;
  font-size: 15px;
}

.topnavs a {
  float: left;
  color: #640032;
  text-align: center;
  padding: 4px 16px;
  text-decoration: none;
  font-size: 15px;
  color: white;
}
.topnavs a.active {
  background-color: #640032;
  color: white;
}

.topnavs a:hover {
  background-color: #ddd;
  color: #870A3C;
}

.topnav a:hover {
  background-color: #870A3C;
  color: #870A3C;
}

.topnav a.active {
  background-color: #870A3C;
  color: white;
}

.topnavt {
  overflow: hidden;
  background-color: #640032;
}

.topnavt a {
  float: left;
  color: #640032;
  text-align: center;
  padding: 4px 84px;
  text-decoration: none;
  font-size: 15px;
  color: white;
}

.topnavt a.active {
  background-color: #640032;
  color: white;
}

.topnavt a:hover {
  background-color: #ddd;
  color: #870A3C;
}

* {
  box-sizing: border-box;
}

.column1 {
  float: left;
  width: 50%;
  padding: 10px;
  height: 300px; /* Should be removed. Only for demonstration */
}

.column2 {
  float: right;
  width: 50%;
  padding: 10px;
  height: 300px; /* Should be removed. Only for demonstration */
}


/* Clearfix (clear floats) */
.row::after {
  content: "";
  clear: both;
  display: table;
}
.center {
  text-align: center;
  height: 800px;
  background-color: #ffe6e6;
  
}

 .app-button{
    background-color: #640032;
    width: 50px;
    padding: 50px;
    display:inline;
    line-height: 10px;
    color: white;
}
.row{
  text-align:center;
  /*the same margin which is every button have, it is for small screen, and if you have many buttons.*/
  margin-left:-20px;
  marin-right:-20px;
}

input[type=date], select {
  width: 50%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=text], select {
  width: 50%;
  padding: 12px 20px;
  margin: 8px 0;
  display: inline-block;
  border: 1px solid #ccc;
  border-radius: 4px;
  box-sizing: border-box;
}

input[type=submit] {
  width: 100%;
  background-color: #4CAF50;
  color: white;
  padding: 14px 20px;
  margin: 8px 0;
  border: none;
  border-radius: 4px;
  cursor: pointer;
}

input[type=submit]:hover {
  background-color: #45a049;
}

div {
  border-radius: 5px;
  background-color: #f2f2f2;
  padding: 20px;
}
.form-inline {
  display: flex;
  flex-flow: row wrap;
  align-items: center;
}

 .form-inline {
    flex-direction: column;
    align-items: stretch;
  }

.form-inline label {
  margin: 5px 10px 5px 0;
}

/* Style the input fields */
.form-inline input {
  vertical-align: middle;
  margin: 5px 10px 5px 0;
  padding: 10px;
  background-color: #fff;
  border: 1px solid #ddd;
}

/* Style the submit button */
.form-inline button {
  padding: 10px 20px;
  background-color: dodgerblue;
  border: 1px solid #ddd;
  color: white;
}

.form-inline button:hover {
  background-color: royalblue;
}

/* Add responsiveness - display the form controls vertically instead of horizontally on screens that are less than 800px wide */
@media (max-width: 800px) {
  .form-inline input {
    margin: 10px 0;
  }

body {
    margin:50px 0px; padding:0px;
    text-align:center;
    align:center;
}


.split {
  height: 100%;
  width: 50%;
  position: fixed;
  z-index: 1;
  top: 0;
  overflow-x: hidden;
  padding-top: 20px;
}

.left {
  left: 20;
  background-color: #111;
}

.right {
  right: 0;
  background-color: red;
}




</style>
</head>

    <body>

<div class="topnav">
  <a class="active" href="#home">ABSA Deck Administration</a>
</div>

<div class="topnavs">
  <a class="active" href="#home">Home</a>
  <a class="active" href="#home">Authentication</a>
  <a class="active" href="#home">Users</a>
</div>
  
<div style="padding-left:16px">

<h5>Create User</h5>
  
<div style="padding-left:16px;padding-right: 30px;">
  
  <div class="topnavt">
  <a class="active" onclick="openTab(event, 'request')" id="defaultOpen">Personal Info</a>
  <a class="active" onclick="openTab(event, 'existing')">Roles</a>
  <a class="active" onclick="openTab(event, 'rejected')">Permissions</a>
  </div>
 

  <form action = "/registrationSubmit">
<div class="center">
<div class="column1">
	
    <label for="fname">ABSA ID</label>
    <input type="text" id="fname" name="absaId" placeholder="Your name..">
</br>
<!--     <label for="lname">BRID</label>
    <input type="text" id="lname" name="brId" placeholder="Your last name..">
</br> -->
<label for="emailid">Email Id</label>
    <input type="text" id="email" name="email" placeholder="Your email id..">
<!-- </br>
<label for="date">Creation date</label>
    <input type="date" id="date" name="date" placeholder="dd\mm\yyyy">
</br>
<label for="abid">AB Id</label>
    <input type="text" id="abid" name="abid" placeholder="Your AB id..">
</div>

<div class="column2">
<label for="bridid">BRID Id</label>
    <input type="text" id="bridid" name="bridid" placeholder="Your BRID id..">
</br>


<label for="mobno">Mobile Number</label>
    <input type="text" id="mobno" name="mobno" placeholder="Your Mobile Number..">
</br>

<label for="deskno">Desk Number</label>
    <input type="text" id="deskno" name="deskno" placeholder="Your Desk Number..">
     -->
     <br>	
    <label for="firstName">First Name</label>
    <input type="text" id="fname" name="firstName" placeholder="Your first name..">
</br>
	
    <label for="lastName">Last Name</label>
    <input type="text" id="fname" name="lastName" placeholder="Your last name..">
</br>

<label for="pswd">Password</label>
    <input type="text" id="pswd" name="password" placeholder="Your Password..">
</br>
</div>

<div class="column1">
	
<!-- <form action="/action_page.php">
 -->  <p>Please select your User Type:</p>
  <input type="radio" id="support" name="userType" value="S">
  <label for="Support">Support</label><br>
  <input type="radio" id="ltp" name="userType" value="L">
  <label for="LTP">LTP</label><br>
  <input type="radio" id="business" name="userType" value="B">
  <label for="Business">Business</label>
  
  </div>
  
  <div class="column1">
	
<!-- <form action="/action_page.php"> -->
<p>Please select your Roles:</p>
  <input type="checkbox" id="role" name="role" value="DM">
  <label for="vehicle1">DM</label><br>
  <input type="checkbox" id="role" name="role" value="12">
  <label for="vehicle2"> SOD Health Check</label><br>
  <input type="checkbox" id="role" name="role" value="78">
  <label for="vehicle3"> Batch Monitoring</label><br><br>
  
  <input type="checkbox" id="role" name="role" value="Kamls">
  <label for="vehicle1"> KAMLS</label><br>
  <input type="checkbox" id="role" name="role" value="5">
  <label for="vehicle2"> SOD Health Check</label><br>
  <input type="checkbox" id="role" name="role" value="7">
  <label for="vehicle3"> Batch Monitoring</label><br><br>
  
  </div>
  
 <input type="submit" class="app-button" id="btnClearSearch" align="center" value="Submit">

 </div>
  </form>
   
  
    </div>
  
</div>

</body>
</body>

<script>

function openCity(evt, cityName) {
  // Declare all variables
  var i, tabcontent, tablinks;

  // Get all elements with class="tabcontent" and hide them
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }

  // Get all elements with class="tablinks" and remove the class "active"
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }

  // Show the current tab, and add an "active" class to the button that opened the tab
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " active";
}
</script>
</html>