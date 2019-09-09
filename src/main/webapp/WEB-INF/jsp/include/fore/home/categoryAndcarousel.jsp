<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8" isELIgnored="false"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<style>
/* .p1{
overflow: hidden;
width：200px;

text-overflow: ellipsis;
display: -webkit-box;
-webkit-line-clamp: 1;
-webkit-box-orient: vertical;
} */
        
.recommends {
	height: 510px;
	width: 245px;
	/* background:gray; */
	border: 1px solid #F7F7F7;
	float: right;
	margin-top: 36px;
	text-align: center;
}

.recommends h4 {
	text-align: center;
	padding-bottom: 5px;
	border-bottom: 1px solid white;
}

.recommends .recommend ul li {
	list-style: none;
	font-size: 14px;
	border:1px solid white;
	margin:3px;
}

.name {
	font-size: 16px;
	width:200px;
	 height:44px; 
	overflow:hidden;
}

.price {
	font-size: 16px;
	padding-left: 10px;
	color: red;
}

.img-add {
	height: 90px;
	width: 150px;
	border: 1px solid red;
}
</style>
<script>
	function showProductsAsideCategorys(cid) {
		$("div.eachCategory[cid=" + cid + "]").css("background-color", "white");
		$("div.eachCategory[cid=" + cid + "] a").css("color", "#87CEFA");
		$("div.productsAsideCategorys[cid=" + cid + "]").show();
	}

	function hideProductsAsideCategorys(cid) {
		$("div.eachCategory[cid=" + cid + "]").css("background-color",
				"#e2e2e3");
		$("div.eachCategory[cid=" + cid + "] a").css("color", "#000");
		$("div.productsAsideCategorys[cid=" + cid + "]").hide();
	}
	$(function() {
		$("div.eachCategory").mouseenter(function() {
			var cid = $(this).attr("cid");
			showProductsAsideCategorys(cid);
		});
		$("div.eachCategory").mouseleave(function() {
			var cid = $(this).attr("cid");
			hideProductsAsideCategorys(cid);
		});
		$("div.productsAsideCategorys").mouseenter(function() {
			var cid = $(this).attr("cid");
			showProductsAsideCategorys(cid);
		});
		$("div.productsAsideCategorys").mouseleave(function() {
			var cid = $(this).attr("cid");
			hideProductsAsideCategorys(cid);
		});

		$("div.rightMenu span").mouseenter(function() {
			var left = $(this).position().left;
			var top = $(this).position().top;
			var width = $(this).css("width");
			var destLeft = parseInt(left) + parseInt(width) / 2;
			$("img#catear").css("left", destLeft);
			$("img#catear").css("top", top - 20);
			$("img#catear").fadeIn(500);

		});
		$("div.rightMenu span").mouseleave(function() {
			$("img#catear").hide();
		});

		var left = $("div#carousel-of-product").offset().left;
		$("div.categoryMenu").css("left", left - 20);
		$("div.categoryWithCarousel div.head").css("margin-left", left);
		$("div.productsAsideCategorys").css("left", left - 20);

	});
</script>

<img src="img/site/catear.png" id="catear" class="catear" />

<div class="categoryWithCarousel">


	<div class="headbar show1">
		<div class="head ">

			<span style="margin-left: 10px" class="glyphicon glyphicon-th-list"></span>
			<span style="margin-left: 10px">商品分类</span>

		</div>

		<div class="rightMenu">
			<span><a href=""><img src="img/site/chaoshi.png" /></a></span> <span><a
				href=""><img src="img/site/guoji.png" /></a></span>

			<c:forEach items="${cs}" var="c" varStatus="st">
				<c:if test="${st.count<=4}">
					<span> <a href="forecategory?cid=${c.id}"> ${c.name} </a></span>
				</c:if>
			</c:forEach>
		</div>
		<!-- 推荐栏 -->
		<div class="recommends">
			<div class="recommend">
				<h4>相关推荐</h4>
				<ul>
					<c:forEach items="${tj}" var="tj">
						<li>
							<div class="name"><span class="p1 ">${tj.name }</span></div>
							<img src="img/productSingle_small/${tj.id}.jpg" height="20%" width="40%">
							<span class="price">${tj.originalPrice }</span>
							
						</li>
					</c:forEach>
					
				</ul>
			</div>
		</div>
	</div>


	<div style="position: relative">
		<%@include file="categoryMenu.jsp"%>
	</div>

	<div style="position: relative; left: 0; top: 0;">
		<%@include file="productsAsideCategorys.jsp"%>
	</div>


	<%@include file="carousel.jsp"%>

	<div class="carouselBackgroundDiv"></div>



</div>





