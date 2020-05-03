<%--
  Created by IntelliJ IDEA.
  User: Dan
  Date: 4/17/2020
  Time: 3:32 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="cnour" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8" %>

<html>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="">
    <title>Home | E-Shopper</title>
    <link href="css/bootstrap.min.css" rel="stylesheet">
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
</head>
<body>

<%response.setHeader("Cache-Control", "no-cache, no-store, must-revalidate"); // HTTP 1.1.
    response.setHeader("Pragma", "no-cache");
    response.setDateHeader("Expires", 0);
%>
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
                        <a href="index.jsp"><img src="images/home/logo.png" alt=""/></a>
                    </div>
                    <div class="btn-group pull-right">

                    </div>
                </div>
                <div class="col-sm-8">
                    <div class="shop-menu pull-right">
                        <ul class="nav navbar-nav">
                            <cnour:if test="${sessionScope.role==null}">
                                <% RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                                    rd.forward(request,response);%>
                            </cnour:if>
                            <cnour:if test="${!empty sessionScope.nameprofile}">
                                <li><a href="profile"><i class="fa fa-user"></i>Welcome ${sessionScope.nameprofile}
                                </a></li>
                            </cnour:if>
                            <cnour:if test="${!empty sessionScope.userId}" var="userId">
                                <cnour:if test="${sessionScope.role.equals('USER')}" var="role" >
                                <li><a href="${pageContext.servletContext.contextPath }/CartHandlerServlet2"><i
                                        class="fa fa-shopping-cart"></i> Cart</a></li>
                                </cnour:if>
                                <li><a href="logOut"><i class="fa fa-user"></i>Log out </a></li>
                            </cnour:if>
                            <cnour:if test="${empty sessionScope.userId}" var="userId">
                                <li><a href="login.jsp"><i class="fa fa-lock"></i> Login</a></li>
                            </cnour:if>
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
                            <li><a href="${pageContext.servletContext.contextPath}/HomeServlet" class="active">Home</a>
                            </li>
                            <!--                                    check that role equal Admin start-->
                            <cnour:if test="${sessionScope.role.equals('ADMIN')}">

                            <li><a href="ManageUsersServlet">Manage Users</a>
                            </li>
                            <li><a href="ManageProduct">Manage Products</a>
                                </cnour:if>
                                <!--                                    check that role equal Admin end-->
                            </li>
                            <!--                                    <li><a href="404.html">404</a></li>-->
                            <li><a href="contact-us.jsp">Contact</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div>
                        <form action="SearchServlet">
                            <div class="search_box " style="display: inline">

                                <input type="text" placeholder="Search" name="search"/>
                            </div>
                            <input type="submit" value="search" id="searchButton"
                                   style="  height: 35px;border-radius: 5px; background: #fdb45e;">
                        </form>
                    </div>

                </div>
            </div>
        </div>
    </div><!--/header-bottom-->
</header><!--/header-->

<section id="slider"><!--slider-->
    <div class="container">
        <div class="row">
            <div class="col-sm-12">
                <div id="slider-carousel" class="carousel slide" data-ride="carousel">
                    <ol class="carousel-indicators">
                        <li data-target="#slider-carousel" data-slide-to="0" class="active"></li>
                        <li data-target="#slider-carousel" data-slide-to="1"></li>
                        <li data-target="#slider-carousel" data-slide-to="2"></li>
                    </ol>

                    <div class="carousel-inner">
                        <div class="item active">
                            <div class="col-sm-6">
                                <h1><span>E</span>-SHOPPER</h1>
                                <h2> E-Commerce </h2>
                                <!--                                        <p> </p>-->
                                <button type="button" class="btn btn-default get">Get it now</button>
                            </div>
                            <div class="col-sm-6">
                                <img src="images/home/kids.png" class="girl img-responsive" alt=""/>
                                <!--                                        <img src="images/home/pricing.png"  class="pricing" alt="" />-->
                            </div>
                        </div>
                        <div class="item">
                            <div class="col-sm-6">
                                <h1><span>E</span>-SHOPPER</h1>
                                <h2>100% Responsive Design</h2>
                                <!--                                        <p>Lorem ipsu </p>-->
                                <button type="button" class="btn btn-default get">Get it now</button>
                            </div>
                            <div class="col-sm-6">
                                <img src="images/home/girl2.jpg" class="girl img-responsive" alt=""/>
                                <!--                                        <img src="images/home/pricing.png"  class="pricing" alt="" />-->
                            </div>
                        </div>

                        <div class="item">
                            <div class="col-sm-6">
                                <h1><span>E</span>-SHOPPER</h1>
                                <h2> Ecommerce </h2>
                                <!--                                        <p>Lorem ipsum dolor sit amet, consectetur adipisicing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. </p>-->
                                <button type="button" class="btn btn-default get">Get it now</button>
                            </div>
                            <div class="col-sm-6">
                                <img src="images/home/men.png" class="girl img-responsive" alt=""/>
                                <!--                                        <img src="images/home/pricing.png" class="pricing" alt="" />-->
                            </div>
                        </div>

                    </div>

                    <a href="#slider-carousel" class="left control-carousel hidden-xs" data-slide="prev">
                        <i class="fa fa-angle-left"></i>
                    </a>
                    <a href="#slider-carousel" class="right control-carousel hidden-xs" data-slide="next">
                        <i class="fa fa-angle-right"></i>
                    </a>
                </div>

            </div>
        </div>
    </div>
</section><!--/slider-->

<section>
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <div class="left-sidebar">
                    <h2>Category</h2>
                    <div class="panel-group category-products" id="accordian"><!--category-productsr-->

                        <div class="panel panel-default">
                            <div class="panel-heading" id="menLink">
                                <h4 class="panel-title"><a
                                        href="${pageContext.servletContext.contextPath }/MenProductServlet"
                                        onclick="showMenProduct()" style="width: 100%">MEN</a>
                                </h4>
                            </div>
                        </div>
                        <div class="panel panel-default">
                            <div class="panel-heading" id="womenLink">
                                <h4 class="panel-title"><a
                                        href="${pageContext.servletContext.contextPath }/WomenProductServlet"
                                        onclick="showWomenProduct()"
                                        style="width: 100%">WOMEN</a></h4>
                            </div>
                        </div>

                        <div class="panel panel-default">
                            <div class="panel-heading" id="kidsLink">
                                <h4 class="panel-title"><a
                                        href="${pageContext.servletContext.contextPath }/KidsProductServlet"
                                        onclick="showKidsProduct()" style="width: 100%">Kids</a>
                                </h4>
                            </div>
                        </div>


                    </div>
                </div>
            </div>
            <div class="col-sm-9 padding-right">
                <c:if test="${applicationScope.productsList !=null}">
                    <div class="features_items" id="home"><!--features_items-->

                        <h2 class="title text-center">Features Items</h2>
                        <c:forEach var="productsList" items="${applicationScope.productsList}">
                            <div class="col-sm-4">
                                <div class="product-image-wrapper">
                                    <div class="single-products">
                                        <div class="productinfo text-center">
                                            <img src="data:image/jpg;base64,${productsList.imageName}" height="220px"
                                                 alt=""/>
                                            <h2><c:out value="${productsList.price}"/></h2>
                                            <p><c:out value="${productsList.name}"/></p>
                                            <a href="ProductDetailsServlet?pid=${productsList.productId}"
                                               class="btn btn-default add-to-cart"><i
                                                    class="fa fa-shopping-cart"></i>Show Details</a>

                                            <cnour:if test="${!empty sessionScope.userId}" var="userId">
                                                <a onclick="addCart(${sessionScope.userId},${productsList.productId})"
                                                   class="btn btn-default add-to-cart"><i
                                                        class="fa fa-shopping-cart"></i>Add to cart</a>
                                            </cnour:if>
                                            <cnour:if test="${sessionScope.role==null}">
                                                <a href="login.jsp" class="btn btn-default add-to-cart"><i
                                                        class="fa fa-shopping-cart"></i>Add to cart</a>
                                            </cnour:if>

                                        </div>
                                        <div class="product-overlay">
                                            <div class="overlay-content">
                                                <h2><c:out value="${productsList.price}"/></h2>
                                                <p><c:out value="${productsList.description}"/></p>
                                                <a href="ProductDetailsServlet?pid=${productsList.productId}"
                                                   class="btn btn-default add-to-cart"><i
                                                        class="fa fa-shopping-cart"></i>Show Details</a>
                                                <cnour:if test="${!empty sessionScope.userId}" var="userId">
                                                    <a onclick="addCart(${sessionScope.userId},${productsList.productId})"
                                                       class="btn btn-default add-to-cart"><i
                                                            class="fa fa-shopping-cart"></i>Add to cart</a>
                                                </cnour:if>
                                                <cnour:if test="${sessionScope.role==null}">
                                                    <a href="login.jsp" class="btn btn-default add-to-cart"><i
                                                            class="fa fa-shopping-cart"></i>Add to cart</a>
                                                </cnour:if>
                                            </div>
                                            <b id="errorMsg" style="color:red;"></b>
                                        </div>
                                    </div>
                                </div>
                            </div>
                        </c:forEach>

                    </div>
                </c:if>
            </div>
        </div>
    </div>
</section>

<footer id="footer">
    <div class="footer-bottom">
        <div class="container">
            <div class="row">
                <p class="pull-left">Copyright © 2020 JETS ITI Inc. All rights reserved.</p>
                <p class="pull-right">Designed by <span><a target="_blank"
                                                           href="http://www.iti.gov.eg/Admission/PTPprogram/intake37/WMADtrack">JETS</a></span>
                </p>
            </div>
        </div>
    </div>

</footer><!--/Footer-->


<script src="js/home.js"></script>
<script src="js/jquery.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.scrollUp.min.js"></script>
<script src="js/price-range.js"></script>
<script src="js/jquery.prettyPhoto.js"></script>
<script src="js/main.js"></script>
<script>

    $(document).ready(function () {
        $("#womenLink").css("background-color", "white");
        $("#womenLink").css("background-color", "white");
        $("#kidsLink").css("background-color", "white");
    });
</script>
<script>
    function addCart(userId, productId) {
        debugger
        console.log("here" + userId);
        if (window.XMLHttpRequest)
            req = new XMLHttpRequest();
        else if
        (window.ActiveXObject)
            req = new ActiveXObject(Microsoft.XMLHTTP);
        url = "AddToCartServlet";
        console.log("here req" + userId);
        req.open("POST", url, true);
        req.setRequestHeader("content-type", "application/x-www-form-urlencoded");
        req.onreadystatechange = handle;
        console.log("here req done");
        req.send("userId=" + userId + "&productId=" + productId);
    }

    function handle() {
        debugger
        if (req.readyState == 4 && req.status == 200) {
            console.log("here");
            updateResult = req.responseText;
            if (updateResult.trim() == "false"){
                console.log("handleStateChange : " + updateResult);
                document.getElementById("errorMsg").innerHTML = "Product not available (currently)!"; // will show error msg here
            }else{
                console.log("handleStateChange : " + updateResult);
                document.getElementById("errorMsg").innerHTML = "";
            }
        }
    }


</script>
</body>
</html>