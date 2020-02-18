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
                        <a href="/approveuser/${user.absaId}" class="btn primary-btn create-user"><img src="/icons/approve.svg" alt="adduser">Approve User</a>
                        <a href="/rejectuser/${user.absaId}" class="btn secondary-btn delete-user"><img src="/icons/reject.svg">Reject User</a>
                    </div>
                </div>


                <div class="tab">
                    <button class="tablink" onclick="openPage('existing-users', this)" id="defaultOpen">USER DETAILS</button><button class="tablink" onclick="openPage('new-users', this)">ROLES</button><button class="tablink" onclick="openPage('rejected-users', this,)">PERMISSIONS</button>
                </div>

                <form <%--action="/saveuserdetails"--%>>
                    <div id="existing-users" class="tabcontent">
                        <label for="fname">ABSA ID</label>
                        <input type="text" id="fname" name="absaId" value="${user.absaId}">

                        <label for="fname">First Name</label>
                        <input type="text" id="fname" name="firstName" value="${user.firstName}">

                        <label for="fname">Last Name</label>
                        <input type="text" id="lname" name="lastName" value="${user.lastName}">

                        <label for="fname">Mobile</label>
                        <input type="text" id="mobno" name="mobileNo" value="${user.mobileNo}">

                        <label for="fname">Desk Phone</label>
                        <input type="text" id="deskphone" name="deskPhone" value="${user.deskPhone}">

                        <label for="fname">Email</label>
                        <input type="text" id="email" name="email" value="${user.email}">

                        <label for="fname">Date edited</label>
                        <input type="text" id="lud" name="last_update_dt" value="${user.last_update_dt}">

                    </div>

                    <div id="new-users" class="tabcontent">


                    </div>

                    <div id="rejected-users" class="tabcontent">


                    </div>

                    <input type="submit">
                </form>
            </div>

        </div>
    </main>

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
