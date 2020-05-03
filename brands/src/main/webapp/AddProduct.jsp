<%--
  Created by IntelliJ IDEA.
  User: Mohemed
  Date: 2020-04-17
  Time: 10:21 PM
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<html>
<head>
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

        .image-preview{
            width: 300px;
            min-height: 200px;
            border: 2px solid #dddddd;
            margin-top: 15px;
            display: flex;
            align-content: center;
            justify-content: center;
            font-weight: bold;
            color: #CCCCCC;
        }

        .image-preview__image{
            display: none;
            width: 300px;
        }

    </style>

</head><!--/head-->

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
                            <li><a href="${pageContext.servletContext.contextPath}/HomeServlet"
                            >Home</a>
                            </li>
                            <!--                                    check that role equal Admin start-->

                            <c:if test="${sessionScope.role==null}">
                                <% RequestDispatcher rd = request.getRequestDispatcher("login.jsp");
                                    rd.forward(request,response);%>
                            </c:if>
                            <c:if test="${sessionScope.role.equals('ADMIN')}">

                                <li><a href="ManageUsersServlet">Manage Users</a>
                                </li>
                                <li><a href="ManageProduct"  class="active">Manage Products</a>

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
    </div>
</header>


<section>
    <div class="container">
        <div class="row">
            <div class="col-sm-3">
                <div class="left-sidebar" >
                    <Br>
                    <div class="image-preview" id="imagePreview"><!--shipping-->
                        <img src="" alt="product Image" class="image-preview__image">
                        <span class="image-preview__default-text">product image</span>
<%--                        <img src="images/home/user.png" height="200" alt=""/>--%>
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
<%--                                    enctype="multipart/form-data"--%>
                                    <form class="form-inline" action="AdminAddProduct" method="POST"  enctype="multipart/form-data" >
                                        <input type="text" name="name"  placeholder="Product Name" required="true">
                                        <br>
                                        <br>
                                        <span aria-colcount="2">
                                        <input type="text" name="category" id="categ" placeholder="Category :men,women,kids"
                                               required="true" onblur="submitForm()"><br>
                                        <label id="status"></label>
                                        </span>
                                        <br><br>
                                        <input type="number" name="price" placeholder="price" required="true" >
                                        <br><br>
                                        <input type="number" name="quantity" placeholder="quantity" required="true" >
                                        <br><br>
                                        <input type="text" name="description" placeholder="description" required="true">
                                        <br>
                                        <Br>
                                        <center>
                                        <input type="file" id="inpFile" name="photo" required="true" />
                                        </center>
                                        <br/><br>
                                        <button type="submit" class="btn btn-default">Add</button>
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
<script>

    var req = null;

    function submitForm() {

        if (window.XMLHttpRequest)
            req = new XMLHttpRequest();
        else if
        (window.ActiveXObject)
            req = new ActiveXObject(Microsoft.XMLHTTP);
        yourvalue = document.getElementById("categ").value;
        url = "ReqServlet";
        req.open("POST", url, true);
        req.setRequestHeader("content-type", "application/x-www-form-urlencoded");
        req.onreadystatechange = handle;
        req.send("category=" + yourvalue);
    }


    function handle() {
        if (req.readyState == 4 && req.status == 200) {
            //   xmlvalue = req.responseText;
            document.getElementById("status").innerHTML = req.responseText;
        }
    }


</script>
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
<script>
    const inpFile = document.getElementById("inpFile");
    const previewContainer = document.getElementById("imagePreview");
    const previewImage = previewContainer.querySelector(".image-preview__image");
    const previewDefaultText = previewContainer.querySelector(".image-preview__default-text");
    inpFile.addEventListener("change",function () {
        const file = this.files[0];
        if(file){
            const reader = new FileReader();
            previewDefaultText.style.display = "none";
            previewImage.style.display = "block";
            reader.addEventListener("load",function () {
                previewImage.setAttribute("src",this.result);
            });
            reader.readAsDataURL(file);
        }
        else {
            previewDefaultText.style.display = null;
            previewImage.style.display = null;
            previewImage.setAttribute("src","");
        }
    });
</script>

</body>
</html>