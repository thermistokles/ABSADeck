<!DOCTYPE html>
<%@ taglib prefix="spring" uri="http://www.springframework.org/tags"%>
<html lang="en">

<head>
<link href="/css/admin_dashboard.css" rel="stylesheet">
</head>
<body>
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

</body>
</html>
