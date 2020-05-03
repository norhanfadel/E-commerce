<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html lang="en">
<head>

    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Home | E-Shopper</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
    <link href="css/datatables.min.css" rel="stylesheet" type="text/css"/>
    <link href="css/font-awesome.min.css" rel="stylesheet">
    <link href="css/prettyPhoto.css" rel="stylesheet">
    <link href="css/price-range.css" rel="stylesheet">
    <link href="css/animate.css" rel="stylesheet">
    <link href="css/main.css" rel="stylesheet">
    <link href="css/responsive.css" rel="stylesheet">
    <!--[if lt IE 9]>
    <script src="js/html5shiv.js"></script>
    <script src="js/respond.min.js"></script>
    <![endif]-->
    <link rel="shortcut icon" href="images/ico/favicon.ico">
    <link rel="apple-touch-icon-precomposed" sizes="144x144" href="images/ico/apple-touch-icon-144-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="114x114" href="images/ico/apple-touch-icon-114-precomposed.png">
    <link rel="apple-touch-icon-precomposed" sizes="72x72" href="images/ico/apple-touch-icon-72-precomposed.png">
    <link rel="apple-touch-icon-precomposed" href="images/ico/apple-touch-icon-57-precomposed.png">
</head><!--/head-->

<body onload="colorTable()">
<header id="header"><!--header-->
    <div class="header_top"><!--header_top-->
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <div class="contactinfo">
                        <ul class="nav nav-pills">
                            <li><a><i class="fa fa-phone"></i> (20)+1061977417</a></li>
                            <li><a href="#"><i class="fa fa-envelope"></i> eshopper000@gmail.com</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-6">
                    <div class="social-icons pull-right">
                        <ul class="nav navbar-nav">
                            <li><a href="https://www.facebook.com/Eshopper-105586241114204/"><i
                                    class="fa fa-facebook"></i></a></li>
                            <li><a href="https://twitter.com/explore"><i class="fa fa-twitter"></i></a></li>
                            <li><a href="https://www.linkedin.com/feed/"><i class="fa fa-linkedin"></i></a></li>

                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/header_top-->

    <div class="header-middle"><!--header-middle-->
        <div class="container">
            <div class="row">
                <div class="col-sm-4">
                    <div class="logo pull-left">
                        <a href="${pageContext.servletContext.contextPath}/HomeServlet"
                        ><img src="images/home/logo.png" alt=""/></a>
                    </div>
                </div>
                <div class="col-sm-8">
                    <div class="shop-menu pull-right">
                        <ul class="nav navbar-nav">
                            <c:if test="${!empty sessionScope.nameprofile}">
                                <li><a href="profile"><i class="fa fa-user"></i>Welcome ${sessionScope.nameprofile}
                                </a></li>
                            </c:if>
                            <c:if test="${empty sessionScope.userId}" var="userId">
                                <li><a href="login.jsp"><i class="fa fa-lock"></i> Login</a></li>
                            </c:if>
                            <c:if test="${!empty sessionScope.userId}" var="userId">
                                <li><a href="logOut"><i class="fa fa-user"></i>Log out </a></li>
                            </c:if>
                        </ul>


                    </div>
                </div>
            </div>
        </div>
    </div><!--/header-middle-->

    <div class="header-bottom"><!--header-bottom-->
        <div class="container">
            <div class="row">
                <div class="col-sm-9">
                    <div class="navbar-header">
                        <button type="button" class="navbar-toggle" data-toggle="collapse"
                                data-target=".navbar-collapse">
                            <span class="sr-only">Toggle navigation</span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                            <span class="icon-bar"></span>
                        </button>
                    </div>
                    <div class="mainmenu pull-left">
                        <ul class="nav navbar-nav collapse navbar-collapse">
                            <li><a href="${pageContext.servletContext.contextPath}/HomeServlet"
                            >Home</a>
                            </li>
                            <!--                                    check that role equal Admin start-->

                            <c:if test="${sessionScope.role==null}">
                                <% RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                                    rd.forward(request,response);%>
                            </c:if>
                            <c:if test="${sessionScope.role.equals('ADMIN')}">

                                <li><a href="ManageUsersServlet" class="active">Manage Users</a>
                                </li>
                                <li><a href="ManageProduct" >Manage Products</a>

                                    <!--                                    check that role equal Admin end-->
                                </li>
                            </c:if>
                            <c:if test="${!sessionScope.role.equals('ADMIN')}">
                                <%  RequestDispatcher rds = request.getRequestDispatcher("login.jsp");
                                    rds.forward(request,response);%>

                            </c:if>
                            <!--                                    <li><a href="404.html">404</a></li>-->
                            <li><a href="Contact">Contact</a></li>
                        </ul>
                    </div>
                </div>
            </div>
        </div>
    </div><!--/header-bottom-->
</header><!--/header-->
<section>
    <div class="container">
        <br><br>
        <div class="row">

            <c:if test="${! empty requestScope.allUsers}">
                <div class="col-md-10 col-sm-10 padding-right">

                    <table id="table1">
                        <thead>
                        <th>Name</th>
                        <th>Email</th>
                        <th>Phone</th>
                        <th>Credit Limit</th>
                        <th>Address</th>
                        <th id="add"></th>
                        </thead>
                        <tbody>

                        <c:forEach items="${requestScope.allUsers}" var="dbUsers">
                            <tr id="${dbUsers.userId}">
                                <td>
                                    <c:out value="${dbUsers.userName}"/>
                                </td>
                                <td>
                                    <c:out value="${dbUsers.email}"/>
                                </td>
                                <td>
                                    <c:out value="${dbUsers.phone}"/>
                                </td>
                                <td>
                                    <c:out value="${dbUsers.creditLimit}"/>
                                </td>
                                <td>
                                    <c:out value="${dbUsers.address}"/>
                                </td>
                                <td>
                                    <button class="addBtn" onclick="setAdmin(${dbUsers.userId})">Add As Admin1</button>
                                </td>

                            </tr>
                        </c:forEach>
                        </tbody>
                    </table>
                </div>
            </c:if>
            <c:if test="${empty requestScope.allUsers}">
               <center> <h2 style="color: red">No Data Found</h2></center>
            </c:if>
        </div>
    </div>


   
</section>
<script>

    var req = null;

    function setAdmin(userId) {
        console.log("here" + userId);
        if (window.XMLHttpRequest)
            req = new XMLHttpRequest();
        else if
        (window.ActiveXObject)
            req = new ActiveXObject(Microsoft.XMLHTTP);
        //yourvalue = document.getElementById("categ").value;
        url = "ManageUsersServlet";
        console.log("here req" + userId);

        req.open("POST", url, true);
        req.setRequestHeader("content-type", "application/x-www-form-urlencoded");
        req.onreadystatechange = handle;
        console.log("here req done");

        req.send("userIds=" + userId);
    }


    function handle() {
        debugger;
        if (req.readyState == 4 && req.status == 200) {
            console.log("here");
            valueID = req.responseText;

          $("#"+valueID).remove();

        }
    }


</script>


<footer id="footer"><!--Footer-->

    <div class="footer-bottom">
        <div class="container">
            <div class="row">
                <p class="pull-left">Copyright � 2020 JETS ITI Inc. All rights reserved.</p>
                <p class="pull-right">Designed by <span><a target="_blank"
                                                           href="http://www.iti.gov.eg/Admission/PTPprogram/intake37/WMADtrack">JETS</a></span>
                </p>
            </div>
        </div>
    </div>

</footer><!--/Footer-->
<script src="js/jquery.js"></script>
<script src="js/datatables.min.js" type="text/javascript"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.scrollUp.min.js"></script>
<script src="js/price-range.js"></script>
<script src="js/jquery.prettyPhoto.js"></script>
<script src="js/main.js"></script>
<script>
    $(document).ready(function () {
        $('#table1').DataTable();
        $("#add").removeClass("sorting_desc");
        $("#add").removeClass("sorting");
        $("table th").click(function () {
            $("#add").removeClass("sorting_desc");
            $("#add").removeClass("sorting");
            colorTable();
        });


    });

    function colorTable() {
        debugger;
        var table = document.getElementById("table1");
        var tableRows = table.getElementsByTagName("tr");
        for (var i = 0; i < tableRows.length; i++) {
            debugger;
            if (i % 2 == 0) {
                tableRows[i].className = "oddRaw";
            } else {

                tableRows[i].className = "evenRaw";
            }
        }
    }
</script>
</body>
</html>