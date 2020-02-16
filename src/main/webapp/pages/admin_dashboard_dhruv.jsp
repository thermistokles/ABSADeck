<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
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
				
				<div class="main-section">
					<div class="action-bar">
						<div class="search-bar">
							
						</div>
	
						<div class="actions">
							<a href="/registration" class="btn primary-btn create-user"><img src="/icons/add_user.svg" alt="adduser">Create User</a>
							<a href="#" class="btn secondary-btn delete-user"><img src="/icons/delete.svg"> Delete (0) Selected</a>
						</div>
					</div>

					<div class="tab">
						<button class="tablink" onclick="openPage('existing-users', this)" id="defaultOpen">EXISTING USERS</button><button class="tablink" onclick="openPage('new-users', this)">NEW USERS</button><button class="tablink" onclick="openPage('rejected-users', this,)">REJECTED USERS</button>
					</div>


					<div id="existing-users" class="tabcontent">
						<table>
							<thead class="bg-primary">
								<tr><th><input type="checkbox" id="" name="" value="" class="checkbox"></th><th>AB ID</th><th>Name</th><th>Mobile</th><th>Desk Phone</th><th>Email Address</th><th>Role</th><th>Date Created</th></tr>
							</thead >
							<tbody>
							<c:forEach var="authorisedUserDetails" items="${authoriseduser}">
								<tr class="info">

									<td><input type="checkbox" id="" name="select-all" value="" class="checkbox"></td>
									<td>${authorisedUserDetails.absaId} </td>
									<td>${authorisedUserDetails.firstName} &nbsp; ${pendingUserDetails.lastName}</td>
									<td>${authorisedUserDetails.mobileNo}</td>
									<td>${authorisedUserDetails.deskPhone }</td>
									<td>${authorisedUserDetails.email }</td>
									<td>${authorisedUserDetails.role }</td>
									<td>${authorisedUserDetails.last_update_dt }</td>

								</tr>
							</c:forEach>


							</tbody>
						</table>
					</div>

					<div id="new-users" class="tabcontent">
						<table>
							<thead class="bg-primary">
								<tr><th><input type="checkbox" id="" name="" value="" class="checkbox"></th><th>AB ID</th><th>Name</th><th>Mobile</th><th>Desk Phone</th><th>Email Address</th><th>Role</th><th>Date Created</th></tr>
							</thead >
							<tbody>
							<c:forEach var="pendingUserDetails" items="${pendinguser}">
								<tr class="info">

									<td><input type="checkbox" id="" name="select-all" value="" class="checkbox"></td>
									<td>${pendingUserDetails.absaId} </td>
									<td>${pendingUserDetails.firstName} &nbsp; ${pendingUserDetails.lastName}</td>
									<td>${pendingUserDetails.mobileNo}</td>
									<td>${pendingUserDetails.deskPhone }</td>
									<td>${pendingUserDetails.email }</td>
									<td>${pendingUserDetails.role }</td>
									<td>${pendingUserDetails.last_update_dt }</td>

								</tr>
							</c:forEach>


							</tbody>
						</table>
					</div>

					<div id="rejected-users" class="tabcontent">
						<table>
							<thead class="bg-primary">
								<tr><th><input type="checkbox" id="" name="" value="" class="checkbox"></th><th>AB ID</th><th>Name</th><th>Mobile</th><th>Desk Phone</th><th>Email Address</th><th>Role</th><th>Date Created</th></tr>
							</thead >
							<tbody>
							<c:forEach var="rejectedUserDetails" items="${rejecteduser}">
								<tr class="info">

									<td><input type="checkbox" id="" name="select-all" value="" class="checkbox"></td>
									<td>${rejectedUserDetails.absaId} </td>
									<td>${rejectedUserDetails.firstName} &nbsp; ${pendingUserDetails.lastName}</td>
									<td>${rejectedUserDetails.mobileNo}</td>
									<td>${rejectedUserDetails.deskPhone }</td>
									<td>${rejectedUserDetails.email }</td>
									<td>${rejectedUserDetails.role }</td>
									<td>${rejectedUserDetails.last_update_dt }</td>

								</tr>
							</c:forEach>


							</tbody>
						</table>
					</div>
				</div>

				<div class="filter-section">

				</div>
				
			</div>
		</main>

	<!--

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
