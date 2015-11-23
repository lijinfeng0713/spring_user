<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://www.opensymphony.com/sitemesh/decorator" prefix="decorator" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title><decorator:title default="欢迎使用用户管理系统"/></title>
<decorator:head/>
<!-- CSS -->
        <link href="<%=request.getContextPath() %>/css/bootstrap.min.css" rel="stylesheet">
        <link href="<%=request.getContextPath() %>/css/animate.min.css" rel="stylesheet">
        <link href="<%=request.getContextPath() %>/css/font-awesome.min.css" rel="stylesheet">
        <link href="<%=request.getContextPath() %>/css/form.css" rel="stylesheet">
        <link href="<%=request.getContextPath() %>/css/calendar.css" rel="stylesheet">
        <link href="<%=request.getContextPath() %>/css/style.css" rel="stylesheet">
        <link href="<%=request.getContextPath() %>/css/icons.css" rel="stylesheet">
        <link href="<%=request.getContextPath() %>/css/generics.css" rel="stylesheet"> 
        <style type="text/css">
          #sidebar{
            padding-left: 20px;
          }
          
        </style>
</head>
<body id="skin-blur-violate">
        <header id="header" class="media">
            <a href="" id="menu-toggle"><img alt="" src=""></a> 
            <a class="logo pull-left" href="index.html">SUPER ADMIN 1.0</a>
            
            <div class="media-body">
                <div class="media" id="top-menu">
                    <div class="pull-left tm-icon">
                        <a data-drawer="messages" class="drawer-toggle" href="">
                            <i class="sa-top-message"></i>
                            <i class="n-count animated">5</i>
                            <span>Messages</span>
                        </a>
                    </div>
                    <div class="pull-left tm-icon">
                        <a data-drawer="notifications" class="drawer-toggle" href="">
                            <i class="sa-top-updates"></i>
                            <i class="n-count animated">9</i>
                            <span>Updates</span>
                        </a>
                    </div>
                    
                    

                    <div id="time" class="pull-right">
                        <span id="hours"></span>
                        :
                        <span id="min"></span>
                        :
                        <span id="sec"></span>
                    </div>

                    <div class="media-body">
                        <input type="text" class="main-search">
                    </div>
                </div>
            </div>
        </header>
        
        <div class="clearfix"></div>
        
        <section id="main" class="p-relative" role="main">
            
            <!-- Sidebar -->
            <aside id="sidebar">
                
                <!-- Sidbar Widgets -->
                <div class="side-widgets overflow">
                    <!-- Profile Menu -->
                    <div class="text-center s-widget m-b-25 dropdown" id="profile-menu">
                        <a href="" data-toggle="dropdown">
                            <img class="profile-pic animated" src="<%=request.getContextPath() %>/img/profile-pic.jpg" alt="">
                        </a>
                        <ul class="dropdown-menu profile-menu">
                            <li><a href="<%=request.getContextPath() %>/user/add">添加用户</a>
                             <i class="icon left">&#61903;</i><i class="icon right">&#61815;</i>
                            </li>
                            <li><a href="<%=request.getContextPath() %>/user/users">用户列表</a></li>
                            <li><a href="<%=request.getContextPath() %>/logout">退出系统</a></li>
                            <li><a href="">Sign Out</a></li>
                        </ul>
                        <h4 class="m-0">Malinda Hollaway</h4>
                        @malinda-h
                    </div>
                    
                    <!-- Calendar -->
                    <div class="s-widget m-b-25">
                        <div id="sidebar-calendar"></div>
                    </div>
                    
                        </div>
                    </div>
                </div>
                
                <!-- Side Menu -->
                
            </aside>
        </section>
        <!-- Javascript Libraries -->
        <!-- jQuery -->
        <script src="<%=request.getContextPath() %>/js/jquery.min.js"></script> <!-- jQuery Library -->

        <!-- Bootstrap -->
        <script src="<%=request.getContextPath() %>/js/bootstrap.min.js"></script>
        
        <!-- UX -->
        <script src="<%=request.getContextPath() %>/js/scroll.min.js"></script> <!-- Custom Scrollbar -->
        
        <!-- Other -->
        <script src="<%=request.getContextPath() %>/js/calendar.min.js"></script> <!-- Calendar -->
        <script src="<%=request.getContextPath() %>/js/feeds.min.js"></script> <!-- News Feeds -->
        
        
        <!-- All JS functions -->
        <script src="<%=request.getContextPath() %>/js/functions.js"></script>
    </body>
</html>