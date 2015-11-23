<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>Insert title here</title>
</head>
<body>
   <form action="<%=request.getContextPath() %>/upload/1" enctype="multipart/form-data" method="post">
         上传用户：   <input type="text" name="username"><br/>
         上传文件1：<input type="file" name="file1"><br/>
         上传文件2：<input type="file" name="file2"><br/>
           <input type="submit" value="提交">
   </form>
   <img style="width:620px; height:620px;" src="D:\workspace_FOR_kepler\.metadata\.plugins\org.eclipse.wst.server.core\tmp0\wtpwebapps\spring_user\WEB-INF\upload\6\12\50456f9d-3c3b-4053-ad47-a342690e70cb_QQ.jpg">
</body>
</html>