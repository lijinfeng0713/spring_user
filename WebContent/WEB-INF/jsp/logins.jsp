<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户登录</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap-3.3.4-dist/css/bootstrap.min.css">
<script src="<%=request.getContextPath()%>/bootstrap-3.3.4-dist/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/bootstrap-3.3.4-dist/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container-fluid">
<form method="post">
  <div class="form-group">
    <label for="Username">Username</label>
    <input type="text" name="username" class="form-control" id="Username" placeholder="Username">
  </div>
  <div class="form-group">
    <label for="exampleInputPassword1">Password</label>
    <input type="password" name="password" class="form-control" id="exampleInputPassword1" placeholder="Password">
  </div>
	<input type="submit" class="btn btn-default" value="用户登录"/>
</form>
</div>
</body>
</html>