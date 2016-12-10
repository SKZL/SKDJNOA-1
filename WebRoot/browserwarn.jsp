<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html>
<html lang="en">
<head>
    <!-- BEGIN META -->
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <meta name="description" content="">
    <meta name="author" content="Custom Theme">
    <!-- END META -->

    <!-- BEGIN SHORTCUT ICON -->
    <link rel="shortcut icon" href="<%=basePath %>admin/img/favicon.ico">
    <!-- END SHORTCUT ICON -->
    <title>500</title>

    <!-- BEGIN STYLESHEET -->
    <link href="<%=basePath %>admin/css/bootstrap.min.css" rel="stylesheet"><!-- BOOTSTRAP CSS -->
    <link href="<%=basePath %>admin/css/bootstrap-reset.css" rel="stylesheet"><!-- BOOTSTRAP CSS -->
    <link href="<%=basePath %>admin/css/style.css" rel="stylesheet"><!-- THEME BASIC CSS -->
    <link href="<%=basePath %>admin/css/style-responsive.css" rel="stylesheet"><!-- THEME BASIC RESPONSIVE  CSS -->
    <!--[if lt IE 9]>
    <script src="admin/js/html5shiv.js"></script>
    <script src="admin/js/respond.min.js"></script>
    <![endif]-->
    <!-- END STYLESHEET -->
</head>
<body class="body-500">
<div class="container">
    <!-- BEGIN MAIN CONTENT -->
    <section class="error-wrapper">
        <h1>出错啦</h1>
        <h2>请尝试下列浏览器：</h2>
        <li><a href="<%=basePath %>DownloadBrowser/Opera_41.0.2353.69.exe"><h3>欧朋浏览器</h3></a></li>
        <li><a href="<%=basePath %>DownloadBrowser/ChromeStandalone_54.0.2840.99_Setup.exe"><h3>谷歌浏览器</h3></a></li>
        <li><a href="<%=basePath %>DownloadBrowser/Mozilla Firefox 64位_50.01.exe"><h3>火狐浏览器</h3></a></li>
        </br></br>
        <p class="page-500"><a href="<%=basePath %>admin/index.jsp"><h3>返回主页</h3></a></p>
    </section>
    <!-- END MAIN CONTENT -->
</div>
</body>
</html>
