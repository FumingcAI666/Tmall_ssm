<%@ page language="java" contentType="text/html; charset=UTF-8"
		 pageEncoding="UTF-8" import="java.util.*"%>

<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@include file="../include/admin/adminHeader.jsp"%>
<%@include file="../include/admin/adminNavigator.jsp"%>
<title>商品和销量统计</title>

<style style="text/css">
	body, div, dl, dt, dd, .mainmenu, ol, li, h1, h2, h3, h4, h5, h6, pre, code, form, fieldset, legend, input, textarea, p, blockquote, th, td,table,ul{margin:0;padding:0;}
	body,button,select{font-size:12px;font-family:Microsoft YaHei,Helvitica,Verdana,Tohoma,Arial,san-serif;margin:0;padding: 0;text-decoration: none;}   
	img{border:0;}
	i,em{ font-style:normal}
	a{text-decoration:none;blr:expression(this.onFocus=this.blur());outline:none; color:#666}
	ul, ol, li, dl{list-style-type:none;}
	
	/*柱状图样式*/
	.histogram-container{position:relative;margin-left:60px;margin-top:10px;margin-bottom:25px;}
	.histogram-bg-line{border:#999 solid;border-width:0 1px 1px 1px;border-right-color:#eee;overflow:hidden;width:99%;}
	.histogram-bg-line ul{overflow:hidden;border:#eee solid;border-width:1px 0 0 0;}
	.histogram-bg-line li{float:left;width:10%;/*根据.histogram-bg-line下的ul里面li标签的个数来控制比例*/overflow:hidden;}
	.histogram-bg-line li div{border-right:1px #eee solid;}
	
	.histogram-content{position:absolute;left:0px;top:0;width:99%;height:100%;}
	.histogram-content ul{height:100%;}
	.histogram-content li{float:left;height:100%;width:10%;/*根据直方图的个数来控制这个width比例*/text-align:center;position:relative;}
	.histogram-box{position:relative;display:inline-block;height:100%;width:26px;}
	.histogram-content li a{position:absolute;bottom:0;right:0;display:block;width:30px;}
	.histogram-content li .name{position:absolute;bottom:-20px;left:0px;white-space:nowrap;display:inline-block;width:100%;font-size:12px;}
	.histogram-y{position:absolute;left:-60px;top:-10px;font:12px/1.8 verdana,arial;}
	.histogram-y li{text-align:right;width:55px;padding-right:5px;color:#333;}
	.histogram-bg-line li div,.histogram-y li{height:30px;/*控制单元格的高度及百分比的高度，使百分数与线条对齐*/}
	.histogram-box .aOne{FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#a3c8fc,endColorStr=#5196d7); /*IE 6 7 8*/background: -ms-linear-gradient(top, #a3c8fc,  #5196d7);        /* IE 10 */background:-moz-linear-gradient(top,#a3c8fc,#f6f6f8);/*火狐*/ background:-webkit-gradient(linear, 0% 0%, 0% 100%,from(#a3c8fc), to(#f6f6f8));/*谷歌*/ background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#a3c8fc), to(#5196d7));      /* Safari 4-5, Chrome 1-9*/background: -webkit-linear-gradient(top, #a3c8fc, #5196d7);   /*Safari5.1 Chrome 10+*/
	background: -o-linear-gradient(top, #a7cbfe, #5196d7);  /*Opera 11.10+*/}
	.histogram-box .aOne1{FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#fea9a5,endColorStr=#d75d54); /*IE 6 7 8*/background: -ms-linear-gradient(top, #fea9a5,  #d75d54);        /* IE 10 */background:-moz-linear-gradient(top,#fea9a5,#d75d54);/*火狐*/ background:-webkit-gradient(linear, 0% 0%, 0% 100%,from(#fea9a5), to(#d75d54));/*谷歌*/ background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#fea9a5), to(#d75d54));      /* Safari 4-5, Chrome 1-9*/background: -webkit-linear-gradient(top, #fea9a5, #d75d54);   /*Safari5.1 Chrome 10+*/
	background: -o-linear-gradient(top, #fea9a5, #d75d54);  /*Opera 11.10+*/}
	.histogram-box .aOne2{FILTER: progid:DXImageTransform.Microsoft.Gradient(gradientType=0,startColorStr=#ddf8aa,endColorStr=#b0d067); /*IE 6 7 8*/background: -ms-linear-gradient(top, #ddf8aa,  #b0d067);        /* IE 10 */background:-moz-linear-gradient(top,#ddf8aa,#b0d067);/*火狐*/ background:-webkit-gradient(linear, 0% 0%, 0% 100%,from(#ddf8aa), to(#b0d067));/*谷歌*/ background: -webkit-gradient(linear, 0% 0%, 0% 100%, from(#ddf8aa), to(#b0d067));      /* Safari 4-5, Chrome 1-9*/background: -webkit-linear-gradient(top, #ddf8aa, #b0d067);   /*Safari5.1 Chrome 10+*/
	background: -o-linear-gradient(top, #ddf8aa, #b0d067);  /*Opera 11.10+*/}
	.histogram-bg-line div{ line-height:30px}
	.histogram-bg-line div img{ position:relative; top:3px; padding-left:10px}
</style>

</head>
<body>
 <h1 style="text-align:center;margin-top:110px;">商品和销量统计图</h1>
 <div class="histogram-container" id="histogram-container" style="margin-top:150px;">
    <!--背景方格-->
   
    
    <div class="histogram-bg-line">
        <ul>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
           
        </ul>
        <ul>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
           <li><div></div></li>
        </ul>
        <ul>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
            <!-- <li><div><img src="img/zhu1.jpg" width="15" height="15" />&nbsp 完全符合</div></li> -->
        </ul>
       <ul>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
            <!-- <li><div><img src="img/zhu2.jpg" width="15" height="15" />&nbsp 基本符合 </div>< -->
        </ul>
        <ul>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
            <!-- <li><div><img src="img/zhu2.jpg" width="15" height="15" />&nbsp 基本符合 </div>< -->
        </ul>
        <ul>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
            <!-- <li><div><img src="img/zhu2.jpg" width="15" height="15" />&nbsp 基本符合 </div>< -->
        </ul>
        <ul>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
            <!-- <li><div><img src="img/zhu3.jpg" width="15" height="15" />&nbsp 不符合</div>< -->
        </ul>
        <ul>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
           <li><div></div></li>
        </ul>
        <ul>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
           <li><div></div></li>
        </ul>
        <ul>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
            <li><div></div></li>
          <li><div></div></li>
        </ul>
    </div>
    
   <!--  <c:forEach items="${cs}" var="cs">
		<tr>
			<td>${cs.name}</td>
			<br>
			<td>${cs.num}</td>
			<br>
		</tr>
	</c:forEach>--> 
    
    <!--柱状条-->
    <div class="histogram-content">
        <ul>
         <c:forEach items="${cs}" var="cs">
            <li>
                <span class="histogram-box"><a style="height:${cs.num}0%;" title="20%" class="aOne"></a>${cs.num}</span>
                <span class="name">${cs.name}</span>
                <!-- <span class="histogram-box"><a style="height:50%" class="aOne1"title="20%"></a></span>
                <span class="name"></span>
                 <span class="histogram-box"><a style="height:10%"class="aOne2" title="20%"></a></span>
                <span class="name"></span> -->
            </li>
          </c:forEach>
            
        </ul>
    </div>
    <!--百分比 y轴-->
    <div class="histogram-y">
        <ul>
        	<li>10</li>
        	<li>9</li>
            <li>8</li>
            <li>7</li>
            <li>6</li>
            <li>5</li>
            <li>4</li>
            <li>3</li>
            <li>2</li>
            <li>1</li>
            <li>0</li>
        </ul>
    </div>
 </div>
<div style="text-align:center;margin:50px 0; font:normal 14px/24px 'MicroSoft YaHei';">

</div>
</body>
</html>