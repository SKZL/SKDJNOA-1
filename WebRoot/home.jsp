<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<html class="no-js"> <!--<![endif]-->
<head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <title>山东科技大学济南校区教务信息管理系统</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="Free HTML5 Template by FREEHTML5" />

    <!-- Animate.css -->
    <link rel="stylesheet" href="<%=basePath %>admin/css/animate.css">
    <!-- Icomoon Icon Fonts-->
    <link rel="stylesheet" href="<%=basePath %>admin/css/icomoon.css">
    <!-- Bootstrap  -->
    <link rel="stylesheet" href="<%=basePath %>admin/css/bootstrap.css">
    <!-- Superfish -->
    <link rel="stylesheet" href="<%=basePath %>admin/css/superfish.css">

    <link rel="stylesheet" href="<%=basePath %>admin/css/stylefont.css">


    <!-- Modernizr JS -->
    <script src="<%=basePath %>admin/js/modernizr-2.6.2.min.js"></script>
    <!-- FOR IE9 below -->
    <!--[if lt IE 9]>
    <script src="<%=basePath %>admin/js/respondfont.min.js"></script>
    <![endif]-->

</head>
<body>
<div id="fh5co-wrapper">
    <div id="fh5co-page">
        <div id="fh5co-header">
            <header id="fh5co-header-section">
                <div class="container">
                    <div class="nav-header">
                        <a href="#" class="js-fh5co-nav-toggle fh5co-nav-toggle"><i></i></a>
                        <h1 id="fh5co-logo"><a href="<%=basePath %>home.jsp">山东<span>科技大学</span></a></h1>
                    </div>
                </div>
            </header>

        </div>


        <div class="fh5co-hero">
            <div class="fh5co-overlay"></div>
            <div class="fh5co-cover text-center" data-stellar-background-ratio="0.5" style="background-image: url(<%=basePath %>admin/images/skdheng01.jpg);">
                <div class="desc animate-box">
                    <h2>教务信息管理系统</h2>
                    <span>济南校区</span>
                    <span style="font-size: medium"><a class="btn btn-primary" href="<%=basePath %>admin/index.jsp">开始办公</a></span>
                </div>
            </div>

        </div>

    </div>
    <!-- END fh5co-page -->

</div>
<!-- END fh5co-wrapper -->

<!-- jQuery -->


<script src="<%=basePath %>admin/js/jquery.js"></script>
<!-- jQuery Easing -->
<script src="<%=basePath %>admin/js/jquery.easing.1.3.js"></script>
<!-- Bootstrap -->
<script src="<%=basePath %>admin/js/bootstrap.min.js"></script>
<!-- Waypoints -->
<script src="<%=basePath %>admin/js/jquery.waypoints.min.js"></script>
<!-- Stellar -->
<script src="<%=basePath %>admin/js/jquery.stellar.min.js"></script>
<!-- Superfish -->
<script src="<%=basePath %>admin/js/hoverIntent.js"></script>
<script src="<%=basePath %>admin/js/superfish.js"></script>

<!-- Main JS (Do not remove) -->
<script src="<%=basePath %>admin/js/mainfont.js"></script>

</body>
</html>

