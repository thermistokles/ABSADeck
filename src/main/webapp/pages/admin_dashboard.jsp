<%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>    
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    

<head>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">

</head>

<style>
body {font-family: Arial;}

/* Style the tab */
.tab {
  overflow: hidden;
  border: 1px solid #ccc;
  background-color: #f1f1f1;
}

/* Style the buttons inside the tab */
.tab button {
  background-color: inherit;
  float: left;
  border: none;
  outline: none;
  cursor: pointer;
  padding: 14px 16px;
  transition: 0.3s;
  font-size: 17px;
}

/* Change background color of buttons on hover */
.tab button:hover {
  background-color: #ddd;
}

/* Create an active/current tablink class */
.tab button.active {
  background-color: #ccc;
}

/* Style the tab content */
.tabcontent {
  display: none;
  padding: 6px 12px;
  border: 1px solid #ccc;
  border-top: none;
}

/* Style the close button */
.topright {
  float: right;
  cursor: pointer;
  font-size: 28px;
}

.topright:hover {color: red;}



</style>

<h1> This is admin dashboard</h1>
<form action="/logout" method="post"> 

     <button type="submit">Logout</button>
 
</form>



<div class="tab">
  <button class="tablinks" onclick="openTab(event, 'request')" id="defaultOpen">Requests</button>
  <button class="tablinks" onclick="openTab(event, 'existing')">Existing Users</button>
  <button class="tablinks" onclick="openTab(event, 'rejected')">Rejected Users</button>
</div>


<div id="request" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>
 
 
 <table class=" table-striped table-dark table table-responsive table-hover  table-bordered text-center" >
    <thead class="bg-primary">
    <tr><th>ABID</th><th>BRID</th><th>Email ID</th><th>User Type</th></tr>  

    </thead >
    <tbody>
       <c:forEach var="pendingUserDetails" items="${pendinguser}">       
      <tr class="info">
     
   <td>${pendingUserDetails.absaId} </td>  
   <td>${pendingUserDetails.brId} </td>     
   <td>${pendingUserDetails.email}</td>  
   <td>${pendingUserDetails.userType }</td>  
           
      </tr> 
   </c:forEach>  

  
    </tbody>
  </table>
 
</div>

<div id="existing" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>


 <table class=" table-striped table-dark table table-responsive table-hover  table-bordered text-center" >
    <thead class="bg-primary">
    <tr><th>ABID</th><th>BRID</th><th>Email ID</th><th>User Type</th></tr>  

    </thead >
    <tbody>
       <c:forEach var="authorisedUserDetails" items="${authoriseduser}">       
      <tr class="info">
     
   <td>${authorisedUserDetails.absaId} </td>  
   <td>${authorisedUserDetails.firstName} &nbsp; ${authorisedUserDetails.lastName}</td>
   <td>${authorisedUserDetails.}</td>     
   <td>${authorisedUserDetails.email}</td>  
   <td>${authorisedUserDetails.userType }</td>  
           
      </tr> 
   </c:forEach>  

  
    </tbody>
  </table>


</div>

<div id="rejected" class="tabcontent">
  <span onclick="this.parentElement.style.display='none'" class="topright">&times</span>


 <table class=" table-striped table-dark table table-responsive table-hover  table-bordered text-center" >
    <thead class="bg-primary">
    <tr><th>ABID</th><th>BRID</th><th>Email ID</th><th>User Type</th></tr>  

    </thead >
    <tbody>
       <c:forEach var="rejectedUserDetails" items="${rejecteduser}">       
      <tr class="info">
     
   <td>${rejectedUserDetails.absaId} </td>  
   <td>${rejectedUserDetails.brId} </td>     
   <td>${rejectedUserDetails.email}</td>  
   <td>${rejectedUserDetails.userType }</td>  
           
      </tr> 
   </c:forEach>  

  
    </tbody>
  </table>

</div>








<script>
function openTab(evt, cityName) {
  var i, tabcontent, tablinks;
  tabcontent = document.getElementsByClassName("tabcontent");
  for (i = 0; i < tabcontent.length; i++) {
    tabcontent[i].style.display = "none";
  }
  tablinks = document.getElementsByClassName("tablinks");
  for (i = 0; i < tablinks.length; i++) {
    tablinks[i].className = tablinks[i].className.replace(" active", "");
  }
  document.getElementById(cityName).style.display = "block";
  evt.currentTarget.className += " active";
}

// Get the element with id="defaultOpen" and click on it
document.getElementById("defaultOpen").click();
</script>