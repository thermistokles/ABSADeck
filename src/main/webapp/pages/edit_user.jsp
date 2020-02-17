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
                        <a href="/registration" class="btn primary-btn create-user"><img src="/icons/add_user.svg" alt="adduser">Approve User</a>
                        <a href="#" class="btn secondary-btn delete-user"><img src="/icons/delete.svg">Reject User</a>
                    </div>
                </div>

                <div class="tab">
                    <button class="tablink" onclick="openPage('existing-users', this)" id="defaultOpen">USER DETAILS</button><button class="tablink" onclick="openPage('new-users', this)">ROLES</button><button class="tablink" onclick="openPage('rejected-users', this,)">PERMISSIONS</button>
                </div>


                <div id="existing-users" class="tabcontent">


                </div>

                <div id="new-users" class="tabcontent">


                </div>

                <div id="rejected-users" class="tabcontent">


                </div>
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
