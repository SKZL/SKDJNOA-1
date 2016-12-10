<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%
    String path = request.getContextPath();
    String basePath = request.getScheme() + "://"
            + request.getServerName() + ":" + request.getServerPort()
            + path + "/";
%>
<!DOCTYPE html>
<html>
<head>

    <title>山东科技大学济南校区教务信息管理系统</title>

    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false); function hideURLbar(){ window.scrollTo(0,1); } </script>
    <link rel="stylesheet" href="<%=basePath %>admin/css/bootstrap.min.css"/>
    <link rel="stylesheet" href="<%=basePath %>admin/css/nav.css"/>
    <link rel="stylesheet" href="<%=basePath %>admin/css/mstyle.css" type="text/css" media="all" />
	
</head>
<body id="myPage" data-spy="scroll" data-target=".navbar" data-offset="60" >

<!-- Header -->
<div id="home" class="header">

    <!-- Logo -->
    <div class="logo">
        <a href="<%=basePath %>home.jsp">山东科技大学</a>
    </div>
    <!-- //Logo -->

    <!-- Navigation -->
    <div class="container">
        <a href="<%=basePath %>admin/index.jsp">
            <button type="button" class="btn-primary" style="font-size: large">进入
            </button>
        </a>
       
       
    </div>
    <!-- //Navigation -->

    <!-- Carousel -->
    <div id="myCarousel" class="carousel slide" data-ride="carousel">

        <div class="carousel-inner" role="listbox">
            <div class="item active">
                <img class="first-slide" src="<%=basePath %>admin/images/skdheng01.jpg" alt="Strategy">
                <div class="container">
                    <div class="carousel-caption">
                        <h3>教务信息管理系统</h3>
                        <p>济南校区</p>
                    </div>
                </div>
            </div>
            <div class="item">
                <img class="second-slide" src="<%=basePath %>admin/images/skdheng02.jpg" alt="Strategy">
                <div class="container">
                    <div class="carousel-caption">
                        <h3>教务信息管理系统</h3>
                        <p>济南校区</p>
                    </div>
                </div>
            </div>
        </div>

        <a class="left carousel-control" href="#myCarousel" role="button" data-slide="prev">
            <img src="<%=basePath %>admin/images/left.png" alt="Strategy" aria-hidden="true">
            <span class="sr-only">上一张</span>
        </a>
        <a class="right carousel-control" href="#myCarousel" role="button" data-slide="next">
            <img src="<%=basePath %>admin/images/right.png" alt="Strategy" aria-hidden="true">
            <span class="sr-only">下一张</span>
        </a>

    </div>
    <!-- //Carousel -->

</div>


<!-- Default-JavaScript-File --> <script type="text/javascript" src="<%=basePath %>admin/js/jquery.min.js"></script>
<!-- Necessary-JavaScript-File-For-Bootstrap --> <script type="text/javascript" src="<%=basePath %>admin/js/bootstrap.min.js"></script>

<!-- Navigation-JavaScript -->
<script type="text/javascript" src="<%=basePath %>admin/js/jquery-func.js"></script>
<script>
    $(window).load(function() {
        $(".btn-nav").on("click tap", function() {
            $(".nav-container").toggleClass("showNav hideNav").removeClass("hidden");
            $(this).toggleClass("animated");
        });
    });
</script>
<!-- //Navigation-JavaScript -->

<!-- Swipe-Box-JavaScript -->
<script src="<%=basePath %>admin/js/jquery.swipebox.min.js"></script>
<script type="text/javascript">
    jQuery(function($) {
        $(".swipebox").swipebox();
    });
</script>
<!-- //Swipe-Box-JavaScript -->

<!-- Slide-To-Top JavaScript (No-Need-To-Change) -->
<script type="text/javascript">
    $(document).ready(function() {
        var defaults = {
            containerID: 'toTop', // fading element id
            containerHoverID: 'toTopHover', // fading element hover id
            scrollSpeed: 100,
            easingType: 'linear'
        };
        $().UItoTop({ easingType: 'easeOutQuart' });
    });
</script>
<a href="#" id="toTop" style="display: block;"> <span id="toTopHover" style="opacity: 1;"> </span></a>
<!-- //Slide-To-Top JavaScript -->

<!-- Smooth-Scrolling-JavaScript -->
<script type="text/javascript" src="<%=basePath %>admin/js/move-top.js"></script>
<script type="text/javascript" src="<%=basePath %>admin/js/easing.js"></script>
<script type="text/javascript">
    jQuery(document).ready(function($) {
        $(".scroll, .navbar li a, .footer li a").click(function(event){
            event.preventDefault();
            $('html,body').animate({scrollTop:$(this.hash).offset().top},1000);
        });
    });
</script>
<!-- //Smooth-Scrolling-JavaScript -->

<!-- //Custom-JavaScript-Files -->

</body>
</html>