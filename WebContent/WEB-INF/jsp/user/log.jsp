<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>

<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>用户列表</title>
<link rel="stylesheet" href="<%=request.getContextPath()%>/bootstrap-3.3.4-dist/css/bootstrap.min.css">
<script src="<%=request.getContextPath()%>/bootstrap-3.3.4-dist/jquery.min.js"></script>
<script src="<%=request.getContextPath()%>/bootstrap-3.3.4-dist/js/bootstrap.min.js"></script>
</head>
<body>
<div class="container table-responsive">
<table class="table table-bordered">
	<tr>
	<td>ID</td><td>用户名</td><td>用户IP</td><td>模块</td><td>操作</td><td>操作时间</td>
	</tr>
	<c:if test="${logs.total le 0 }">
		<tr>
		<td colspan="6">目前还没有用户数据</td>
		</tr>
	</c:if>
	<c:if test="${logs.total gt 0}">
		<c:forEach items="${logs.datas }" var="log">
		<tr>
		<td>${log.id }</td>
		<td>${log.username }</td>
		<td>${log.userIP }</td>
		<td>${log.module }</td>
		<td>${log.operation }</td>
		<td>${log.operTime }</td>
		</tr>
		</c:forEach>
		<tr>
		<td colspan="6">
			<jsp:include page="/inc/pager.jsp">
				<jsp:param value="logs" name="url"/>
				<jsp:param value="${logs.total}" name="items"/>
			</jsp:include>
		</td>
		</tr>	
	</c:if>
</table>
</div>
</body>
</html>