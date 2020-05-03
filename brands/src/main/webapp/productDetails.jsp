<%--
  Created by IntelliJ IDEA.
  User: dell
  Date: 4/17/2020
  Time: 10:36 PM
  To change this template use File | Settings | File Templates.
--%>

<%@ taglib prefix="cnour" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<html>
<meta charset="utf-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
<meta name="description" content="">
<meta name="author" content="">
<title>Shop | E-Shopper</title>
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
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/css/bootstrap.min.css">
<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/3.4.1/js/bootstrap.min.js"></script>
<style>
    /*            #form {
      display: inline;
      margin-bottom: 185px;
      margin-top: 185px;
      overflow: hidden;
    }*/


    .signup-form h2 {
        color: #696763;
        font-family: 'Roboto', sans-serif;
        font-size: 20px;
        font-weight: 300;
        margin-bottom: 30px;
    }


    .signup-form1 form input {
        background: #F0F0E9;
        border: medium none;
        color: #696763;

        font-family: 'Roboto', sans-serif;
        font-size: 14px;
        font-weight: 300;
        height: 50px;
        margin-bottom: 10px;
        outline: medium none;
        padding-left: 20px;
        width: 40%;
    }


    .signup-form1 form button {
        background: #FE980F;
        border: medium none;
        border-radius: 0;
        color: #FFFFFF;
        display: inline-block;
        font-family: 'Roboto', sans-serif;
        padding: 6px 25px;
    }


</style>
</head>
<body>
<header id="header"><!--header-->
    <div class="header_top"><!--header_top-->
        <div class="container">
            <div class="row">
                <div class="col-sm-6 ">
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
                            <li><a href="index.jsp">Home</a></li>
                            <cnour:if test="${requestScope.role.equals('ADMIN')}"  >

                            <li ><a href="ManageUsersServlet">Manage Users</a>
                            </li>
                            <li><a href="ManageProduct">Manage Products</a>
                                </cnour:if>
                            <li><a href="contact-us.jsp">Contact</a></li>
                        </ul>
                    </div>
                </div>
                <div class="col-sm-3">
                    <div class="search_box pull-right">
                        <input type="text" placeholder="Search"/>
                    </div>
                </div>
            </div>
        </div>
    </div>
</header>


<section>
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <div class="left-sidebar">
                    <Br>
                    <div class=""><!--shipping-->
                        <img src="images/home/user.png" height="200" alt=""/>
                    </div>


                    <!--/price-range-->


                </div>
            </div>

            <div class="col-sm-9 padding-right">
                <div class="features_items"><!--features_items-->
                    <h2 class="title text-center">My E_Shopper Data</h2>

                    <div class="product-image-wrapper">
                        <div class="single-products">
                            <div class="productinfo text-center">
                                <div class="signup-form1">
                                    <form class="form-inline" action="#">
                                        <input type="text" placeholder="Name"/>
                                        <input type="email" placeholder="Email Address" disabled="disabled"/>
                                        <br><br>
                                        <input type="password" placeholder="Password"/>
                                        <input type="text" placeholder="Address">
                                        <br><br>
                                        <input type="number" placeholder="Code">
                                        <input type="date" placeholder="Birthdate" onblur="(this.type='text')"
                                               onfocus="(this.type='date')">
                                        <br><br>
                                        <input type="text" placeholder="Job">
                                        <br>
                                        <Br>
                                        <button type="submit" class="btn btn-default">EDIT</button>
                                    </form>
                                </div>


                            </div>
                        </div>

                    </div><!--features_items-->
                </div>
            </div>
        </div>
    </div>
</section>

<br><br><br>
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
<script src="js/jquery.js"></script>
<script src="js/price-range.js"></script>
<script src="js/jquery.scrollUp.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/jquery.prettyPhoto.js"></script>
<script src="js/main.js"></script>
</body>
</html>
