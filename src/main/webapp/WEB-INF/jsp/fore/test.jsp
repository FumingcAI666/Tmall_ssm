<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<title>test</title>
</head>
<body>
	<c:forEach items="${tj}" var="tj">
		<li><span class="name">${tj.name }</span> <span class="price">${tj.originalPrice }</span>
			<img src="img/productSingle_small/${tj.id}.jpg">
		</li>
	</c:forEach>
</body>
</html>