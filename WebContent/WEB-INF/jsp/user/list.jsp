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
	<td style="width:auto;"><input type="checkbox" id="allChk"/>&nbsp;&nbsp;全选</td><td>用户标识</td><td>用户名</td><td>用户昵称</td><td>用户密码</td><td>用户邮箱</td>
	<td>操作</td>
	</tr>
	<c:if test="${pagers.total le 0 }">
		<tr>
		<td colspan="6">目前还没有用户数据</td>
		</tr>
	</c:if>
	<c:if test="${pagers.total gt 0}">
		<c:forEach items="${pagers.datas }" var="u">
		<tr>
		<td><input type="checkbox" name="subChk" value="${u.id}"/></td><td>${u.id }</td><td>${u.username }</td>
		<td><a href="${u.id }">${u.nickname }</a></td>
		<td>${u.password }</td><td>${u.email }</td>
		<td><a href="${u.id }/update"><i class="glyphicon glyphicon-pencil"></i>&nbsp;更新</a>&nbsp;&nbsp;<a href="${u.id }/delete"><i class="glyphicon glyphicon-trash"></i>&nbsp;删除</a></td>
		</tr>
		</c:forEach>
		<tr>
		<td colspan="6">
			<jsp:include page="/inc/pager.jsp">
				<jsp:param value="users" name="url"/>
				<jsp:param value="${pagers.total}" name="items"/>
			</jsp:include>
		</td>
		<td><input type = "button" class="btn btn-info" id = "del_all" value=" 删除"></td>
		</tr>	
	</c:if>
</table>
</div>
<script type="text/javascript">
//JavaScript Document 
$(document).ready(function() { 
// 全选 
$("#allChk").click(function() { 
$("input[name='subChk']").prop("checked",this.checked); 
}); 
// 单选 
var subChk = $("input[name='subChk']") 
subChk.click(function() { 
$("#allChk").prop("checked", subChk.length == subChk.filter(":checked").length ? true:false); 
}); 
/* 批量删除 */ 
$("#del_all").click(function() { 
// 判断是否至少选择一项 
var checkedNum = $("input[name='subChk']:checked").length; 
if(checkedNum == 0) { 
alert("请选择至少一项！"); 
return; 
} 
// 批量选择 
if(confirm("确定要删除所选项目？")) { 
var checkedList = new Array(); 
$("input[name='subChk']:checked").each(function() { 
checkedList.push($(this).val()); 
}); 
$.ajax({ 
type: "POST", 
url: "deletemore", 
data: {'delitems':checkedList.toString()}, 
 success: function(result) { 
$("[name ='subChk']:checkbox").attr("checked", false); 
window.location.reload(); 
} 
}); 
} 
}); 
}); 

</script>
</body>
</html>