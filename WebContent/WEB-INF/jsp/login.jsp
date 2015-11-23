<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en" class="no-js">

    <head>

        <meta charset="utf-8">
        <title>用户登陆</title>
        <meta name="viewport" content="width=device-width, initial-scale=1.0">

        <!-- CSS -->
        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/reset.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/supersized.css">
        <link rel="stylesheet" href="<%=request.getContextPath()%>/assets/css/style.css">

    </head>

    <body>

        <div class="page-container">
            <h1>Login</h1>
            <form method="post">
                <input type="text" name="username" class="username" placeholder="Username">
                <input type="password" name="password" class="password" placeholder="Password">
                <button type="submit">登 陆</button>
                <div class="error"><span>+</span></div>
            </form>
        </div>
      

        <!-- Javascript -->
        <script src="<%=request.getContextPath()%>/assets/js/jquery-1.8.2.min.js"></script>
        <script src="<%=request.getContextPath()%>/assets/js/supersized.3.2.7.min.js"></script>
        <script src="<%=request.getContextPath()%>/assets/js/supersized-init.js"></script>
        <script src="<%=request.getContextPath()%>/assets/js/scripts.js"></script>

    </body>

</html>
