<%@include file="page_head.jsp"%>

<body>

	<div class="wrapper">

		<header>

			<%@include file="page_header.jsp" %>

			<%@include file="page_breadcrum.jsp"%>

		</header>

		<main>
			<div class="body-inner">
				<%@include file="page_title.jsp"%>
				
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
								<tr onclick="window.location='/edituser/${authorisedUserDetails.absaId}'">

									<td><input type="checkbox" id="1" name="select-all" value="" class="checkbox"></td>
									<td>${authorisedUserDetails.absaId} </td>
									<td>${authorisedUserDetails.firstName} ${authorisedUserDetails.lastName}</td>
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
							<thead>
								<tr><th><input type="checkbox" id="" name="" value="" class="checkbox"></th><th>AB ID</th><th>Name</th><th>Mobile</th><th>Desk Phone</th><th>Email Address</th><th>Role</th><th>Date Created</th></tr>
							</thead >
							<tbody>
							<c:forEach var="pendingUserDetails" items="${pendinguser}">
								<tr onclick="window.location='/edituser/${pendingUserDetails.absaId}'">

									<td><input type="checkbox" id="" name="select-all" value="" class="checkbox"></td>
									<td>${pendingUserDetails.absaId} </td>
									<td>${pendingUserDetails.firstName} ${pendingUserDetails.lastName}</td>
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
								<tr onclick="window.location='/edituser/${rejectedUserDetails.absaId}'">

									<td><input type="checkbox" id="" name="select-all" value="" class="checkbox"></td>
									<td>${rejectedUserDetails.absaId} </td>
									<td>${rejectedUserDetails.firstName} ${rejectedUserDetails.lastName}</td>
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
