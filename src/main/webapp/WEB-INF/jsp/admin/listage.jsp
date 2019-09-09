<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" import="java.util.*"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/admin/adminHeader.jsp"%>
<%@include file="../include/admin/adminNavigator.jsp"%>

<script>
	
</script>
<title>用户年龄管理</title>
<div class="workingArea">
	<h1 class="label label-info">用户管理</h1>
	<br> <br>
	<form method="post" action="admin_agecount_list">
		<label>年龄：</label> 
		<select class="select" name="category">
			<option>电视</option>
			<option>平衡车</option>
			<option>品牌女装</option>
			<option>马桶</option>
			<option>男表</option>
			<option>女表</option>
			<option>扫地机器人</option>
			<option>沙发</option>
			<option>太阳镜</option>
		<select>
		<button type="submit">提 交</button>
	</form>
	<div class="listDataTableDiv">
		<table
			class="table table-striped table-bordered table-hover  table-condensed">
			<thead>
				<tr class="success">
					<th>年龄</th>
					<th>个数</th>
				</tr>
			</thead>
			<tbody>
				<c:forEach items="${ac}" var="ac">
					<tr>
						<td>${ac.age}</td>
						<td>${ac.count}</td>
					</tr>
				</c:forEach>
			</tbody>
		</table>
	</div>
	<div class="pageDiv">
		<%@include file="../include/admin/adminPage.jsp"%>
	</div>
</div>
<%@include file="../include/admin/adminFooter.jsp"%>
