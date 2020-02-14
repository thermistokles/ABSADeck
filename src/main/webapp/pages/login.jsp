<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="en">
<head>
  <title>Admin</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link href="css/log_pu.css" rel="stylesheet">
  <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/css/bootstrap.min.css">
  <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
  <script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.0/js/bootstrap.min.js"></script>

</head>
<body>

<div class="topnav">
  <a class="active" href="#home">ABSA Deck Administration</a>
</div>


  
<div style="padding-left:100px;padding-right:100px;">

<div class="fo">
<h2>Login Form</h2>
</div>
<form action="/action_page.php" method="post">
  
<div style="padding-left:40px;padding-right:30px;">

  <div class="container">
  <div class="cont">
    <label for="uname"><b>Username</b></label>
    </div>
    <input type="text" placeholder="Enter Username" name="uname" required>
<div class="cont">
    <label for="psw"><b>Password</b></label>
    </div>
    <input type="password" placeholder="Enter Password" name="psw" required>
      <div class="login">  
    <button type="submit">Login</button>
</div>
<div class="contn">

    <span class="psw"><a href="">Forgot Password?</a>
    <div>
    <span class="psw"><a href="">Register</a></span>
    </div>
    </span>
</div>
    



 

</form>

</body>
</html>
