<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="en">

<head>
	<meta charset="UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1.0">
	<meta http-equiv="X-UA-Compatible" content="ie=edge">
	<link href="/css/admin_dashboard_dhruv.css" rel="stylesheet">
	<link href="https://fonts.googleapis.com/css?family=Lato:300,400,700|Montserrat:400,500,600,700&display=swap" rel="stylesheet">
	<title>absadeck</title>
</head>
<body>

	<div class="wrapper">

		<header>
			<div class="header">
				<div class="header-inner head-align">
					<div class="logo">Abza Deck Administration</div>

					<nav class="navitems">
						<a href="#">WELCOME, <span>Dhruv Bindoria<!-- ${userDetails.firstName} &nbsp; ${userDetails.lastName} --></span></a>
						<a href="#">CHANGE PASSWORD</a>
						<a class="logout" href="#"><img class="logouticon" src="/icons/logout.svg" alt="logout icon"></a>
					</nav>
				</div>
			</div>


			<div class="breadcrum">
				<div class="header-inner">

				</div>
			</div>
		</header>

		<main>
			<div class="body-inner">
				<h1 class="page-title">Dashboard<!-- ${object.titlename} --></h1>
				
				<div class="action-bar">
					<div class="search-bar">
						
					</div>

					<div class="actions">
						<a href="#" class="primary-button create-user"><img src="/icons/">Create User</a>
						<a href="#" class="secondary-button delete-user">Delete (0) Selected</a>
					</div>
				</div>
			</div>
		</main>

	<!--
		<header>
			<div id="website-name">Abza Deck Administration</div>
			<div class="user-name">WELCOME, <b>Dhruv_Adm</b></div>
			<div class="change-password"><a href="/change-passwrod">CHANGE PASSWORD</a></div>
			<img src="/icons/logout.svg" class="logout-icon"/>
		</header>
		<div class="breadcrum">
			<div class="breadcrum-text">Dashboard > Users</div>
		</div>
		<div class="page-title">Dashboard</div>
		<div class="search-bar">
			<div class="search-placeholder">Search...</div>
			<div class="search-button"></div>
			<img src="/icons/search.svg" class="search-icon">
		</div>
		<div class="create-user-btn">
			<img src="/icons/add-user-button.svg" class="create-user-icon">
		</div>
		<div class="create-user-text">Create User</div>

		<div class="user-tab-bar">
			<div class="user-tab existing">
				<div class="user-tab-text">EXISTING USERS</div>
			</div>
			<div class="user-tab new">
				<div class="user-tab-text">NEW USERS</div>
			</div>
			<div class="user-tab rejected">
				<div class="user-tab-text">REJECTED USERS</div>
			</div>
		</div>

		<div class="tab">
			<button class="tablink" onclick="openPage('existing-users', this)" id="defaultOpen">EXISTING USERS</button>
			<button class="tablink" onclick="openPage('new-users', this)">NEW USERS</button>
			<button class="tablink" onclick="openPage('rejected-users', this,)">REJECTED USERS</button>
		</div>


		<div id="existing-users" class="tabcontent">

		</div>

		<div id="new-users" class="tabcontent">

		</div>

		<div id="rejected-users" class="tabcontent">

		</div>
	-->
	</div>


<script>
function openPage(pageName, elmnt) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablink");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].style.backgroundColor = "";
  }
  document.getElementById(pageName).style.display = "block";
  //elmnt.style.backgroundColor = color;
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>


</body>
</html>
