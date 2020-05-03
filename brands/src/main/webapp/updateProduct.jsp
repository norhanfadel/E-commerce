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
                <div class="left-sidebar">
                    <Br>
                    <div class=""><!--shipping-->
                        <%--                        <img src="images/home/user.png" height="200" alt=""/>--%>
                        <img src="data:image/jpg;base64,${requestScope.productOldImageName}" height="200" alt=""/>
                    </div>


                    <!--/price-range-->


                </div>
            </div>

            <div class="col-sm-9 padding-right">
                <div class="features_items"><!--features_items-->
                    <h2 class="title text-center">My E_Shopper Data</h2>

                    <div class="product-image-wrapper" style="margin-left: 25px" >
                        <div class="single-products">
                            <div class="productinfo text-center">
                                <div class="signup-form1" style="margin: auto">
                                    <form class="form-inline" action="AdminEditProduct" method="post"
                                          enctype="multipart/form-data">
                                        <center>
                                        <table style="padding-left: 30px">
                                            <tr>
                                                <td>Product Name :</td>
                                                <td>
                                                    <input type="text" name="name" placeholder="Name"
                                                           style="width: 100%"
                                                           required="true" value="${requestScope.productOldName}">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Product Price :</td>
                                                <td>
                                                    <input type="number" name="price" placeholder="Price"
                                                           style="width: 100%"
                                                           required="true" value="${requestScope.productOldPrice}">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Product Quantity :</td>
                                                <td>
                                                    <input type="number" name="quantity" placeholder="Quantity"
                                                           style="width: 100%"
                                                           required="true" value="${requestScope.productOldQuantity}">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Product Description :</td>
                                                <td>
                                                    <input type="text" name="description" placeholder="description"
                                                           style="width: 100%"
                                                           required="true"
                                                           value="${requestScope.productOldDescription}">
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>Update Image :</td>
                                                <td>
                                                    <input type="file" id="inpFile" name="photo"
                                                           placeholder="choose image" style="width: 100%" required="true"
                                                           >
                                                </td>
                                            </tr>
                                            <tr>
                                                <td>
                                                    <input type="hidden" name="productID"
                                                           value="${requestScope.productID}"/>
                                                </td>
                                                <td>
                                                    <button type="submit" class="btn btn-default">Save</button>
                                                </td>
                                            </tr>
                                        </table>
                                        </center>
                                        <%--                                        <label>Product Name : </label>--%>
                                        <%--                                        <input type="text" name="name"  placeholder="Name"--%>
                                        <%--                                               required="true" value="${requestScope.UpdateproductOldName}">--%>
                                        <%--                                        <br><br>--%>
                                        <%--                                        <label>Product Price : </label>--%>
                                        <%--                                        <input type="number" name="price" placeholder="Price"--%>
                                        <%--                                               required="true" value="${requestScope.productOldPrice}">--%>
                                        <%--                                        <br><br>--%>
                                        <%--                                        <label>Product Description : </label>--%>
                                        <%--                                        <input type="text" name="description" placeholder="description"--%>
                                        <%--                                               required="true" value="${requestScope.productOldDescription}">--%>
                                        <%--                                        <br><br>--%>
                                        <%--                                        <input type="hidden" name="productID" value="${requestScope.productID}"/>--%>
                                        <%--                                        <button type="submit" class="btn btn-default">Save</button>--%>
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
</body>
</html>