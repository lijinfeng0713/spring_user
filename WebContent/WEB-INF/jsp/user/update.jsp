<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib prefix="sf" uri="http://www.springframework.org/tags/form" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户更新</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap-3.3.4-dist/css/bootstrap.min.css">
<script src="<%=request.getContextPath()%>/bootstrap-3.3.4-dist/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/bootstrap-3.3.4-dist/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container table-responsive">
<sf:form method="post" modelAttribute="user">
<table class="table table-bordered">
	<tr>
	<td>用户名:</td><td>${user.username }<sf:hidden path="username"/></td>
	</tr>
	<tr>
	<td>用户密码:</td><td><sf:password path="password"/><sf:errors path="password"/></td>
	</tr>
	<tr>
	<td>用户昵称:</td><td><sf:input path="nickname"/></td>
	</tr>
	<tr>
	<td>用户邮箱:</td><td><sf:input path="email"/><sf:errors path="email"/></td>
	</tr>
	<tr>
	<td colspan="2">
		<input type="submit" class="btn btn-info" value="用户更新"/>&nbsp;&nbsp;&nbsp;
		<input type ="button" class="btn btn-info" value ="返回"  onclick="history.back();">
	</td>
	</tr>
</table>
</sf:form>
</div>
</body>
</html>