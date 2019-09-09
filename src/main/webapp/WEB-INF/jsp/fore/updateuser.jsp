<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>

<%@include file="../include/fore/header.jsp"%>
<%@include file="../include/fore/top.jsp"%>
<%@include file="../include/fore/simpleSearch.jsp"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<p>name:${user.name }</p>
	</br>
	<p>pass:${user.password }</p>
	</br>
	<p>email:${user.email }</p>
	</br>
	<p>age:${user.age }</p>
	</br>
	<p>sex:${user.sex }</p>
	</br>
	<form action="foreupdateuseruser" method="post">
		<input id="id" name="id" value="${user.id }" style="display:none">
		姓名：<input id="name" name="name" value="${user.name }" readonly="true"> 
		密码：<input id="password" name="password" value="${user.password }" type="text"> 
		邮箱：<input id="email" name="email" value="${user.email }" type="text">
		年龄：<input id="age" name="age" value="${user.age }" type="text"> 
		性别：<input id="sex" name="sex" value="${user.sex }" type="text">
		<button type="submit">确认修改</button>
	</from>
</body>
</html>