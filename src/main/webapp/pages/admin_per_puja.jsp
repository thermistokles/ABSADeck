<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="en">

<head>
  <title>Admin</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
<link href="/css/admin_pu2.css" rel="stylesheet">
 

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
  <a class="active" href="#home">Personal Info</a>
  <a class="active" href="#home">Roles</a>
  <a class="active" href="#home">Permissions</a>
  </div>
  
  
  
  <div class="topnavts">
  
  <a class="active" href="#home">Application</a>
  </div>

  

  
  <div class="center">
  
  <p> <span>DM</span> </p>
  <div class="row">
  
  <div class="column">
  <div>
    <input type="checkbox" value="Health Check">Health Check
    </div>
  </div>
  
  <div class="column">
    <div>
    <input type="checkbox" value="Batch Status">Batch Status
  </div>
  </div>
  
  <div class="column">
    <div>
    <input type="checkbox" value="Batch Status">Batch Status
    </div>
  </div>
  
  </div>

<p> <span>KAMLS</span> </p>
  <div class="row">
  
  <div class="column">
  <div>
    <input type="checkbox" value="Health Check">Health Check
    </div>
  </div>
  
  <div class="column">
    <div>
    <input type="checkbox" value="Batch Status">Batch Status
  </div>
  </div>
  
  <div class="column">
    <div>
    <input type="checkbox" value="Batch Status">Batch Status
    </div>
  </div>
  
  </div>

<br>

<div class="row">
   <input type="submit" class="app-button" id="btnSearch" value="Back">
   <input type="submit" class="app-button" id="btnClearSearch" value="Next">
 </div>


</div>


</body>
</html>
