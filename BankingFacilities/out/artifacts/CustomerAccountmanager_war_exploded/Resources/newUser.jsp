<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <title>CustomerAccountAutomation</title>
    <!--<link rel="Stylesheet" type="text/css" href="style/smoothDivScroll.css" /> -->
    <link rel="Stylesheet" type="text/css" href="style/stylemain.css"/>
    <link rel="Stylesheet" type="text/css" href="style/style.css"/>

    <script src="js/jquery.js" type="text/javascript"></script>
    <script type="text/javascript">
        $(document).ready(function () {

            //When page loads...
            $(".tab_content").hide(); //Hide all content
            $("ul.tabs li:first").addClass("active").show(); //Activate first tab
            $(".tab_content:first").show(); //Show first tab content

            //On Click Event
            $("ul.tabs li").click(function () {

                $("ul.tabs li").removeClass("active"); //Remove any "active" class
                $(this).addClass("active"); //Add "active" class to selected tab
                $(".tab_content").hide(); //Hide all tab content

                var activeTab = $(this).find("a").attr("href"); //Find the href attribute value to identify the active tab + content
                $(activeTab).fadeIn(); //Fade in the active ID content
                return false;
            });

        });

    </script>
    <script>
        function validateNationalCode() {
            var x = document.forms["newRealUser"]["nationalcode"].value;
            if (x.length != 10) {
                alert("National Code length must be 10!");
                return false;
            }
            <!--
                        var flag= x.charAt()
                        if (x == null || x == "") {
                            alert("Name must be filled out");
                            return false;
                        }-->
        }
    </script>

    <style type="text/css"></style>
</head>

<body>
<div id="mainBar">
    <div id="topBar">
        </br>
        <a id="homeLink" href="Home.html"><b>Customer Account Manager </b></a>
    </div>
    <div id="middleBar">
        <div id="rightBar">
            <div id="verticalLinks">
                <ul id="vertLinks">
                    <a class="vertLink" href="newUser.jsp">Create New User</a>
                    <a class="vertLink" href="searchUser.jsp">Search </a>
                    <a class="vertLink" href="http://localhost:8080/htmlPart/BankingFaclilities.html">Banking Facilities</a>
                </ul>

            </div>
        </div>
        <div id="leftBar">

            <ul class="tabs">
                <li><a href="#tab1">Real Customer</a></li>
                <li><a href="#tab2">Legal Customer</a></li>

            </ul>
            <div class="tab_container">
                <div id="tab1" class="tab_content">
                    <form name="newRealUser" action="/CreateNewRealCustomerServlet" align=center>
                        <ul>First Name:&ensp;&ensp; &ensp;<input type="text" name="firstname"></ul>
                        <ul>Last Name: &ensp;&ensp;&ensp;<input type="text" name="lastname"></ul>
                        <ul>Father: &ensp;&ensp;&ensp;&ensp;&ensp;&ensp;<input type="text" name="fathername"></ul>
                        <ul>Birth Date:&ensp; &ensp;&ensp;<input type="text" name="birthdate"></ul>
                        <ul>National Code: <input type="text" name="nationalcode"></ul>
                        <br>
                        <ul><input type="submit" value="Submit"></ul>
                    </form>
                </div>
                <div id="tab2" class="tab_content">
                    <form action="/CreateNewLegalCustomerServlet" align=center>
                        <ul>Company Name:&ensp;&ensp;<input type="text" name="companyname"></ul>
                        <ul>Economic Code: &ensp;&ensp;<input type="text" name="economiccode"></ul>
                        <ul>Submission Date:&ensp; <input type="text" name="submissiondate"></ul>
                        <br>
                        <ul><input type="submit" value="Submit"></ul>
                    </form>
                </div>
            </div>
        </div>

    </div>
</div>
</body>
</html>
