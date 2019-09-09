<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<!-- <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"> -->
<title>Insert title here</title>
<link href="css/bootstrap/3.3.6/bootstrap.min.css" rel="stylesheet">
<link href="css/fore/style.css" rel="stylesheet">

 <style type="text/css">

		body{

			font:14px/28px "微软雅黑";
			/* background: #87CEFA  ; */

		}

		.contact *:focus{outline :none;}

		.contact{

			width: 700px;
			height: auto;
			background: #f6f6f6;
			margin: 40px auto;
			padding: 10px;

		}

		.contact ul {

			width: 650px;

			margin: 0 auto;

		}

		.contact ul li{
			border-bottom: 1px solid #dfdfdf;
			list-style: none;
			padding: 12px;
		}

		.contact ul li label {
			width: 120px;
			display: inline-block;
			float: left;
		}

		.contact ul li input[type=text],.contact ul li input[type=password]{
			width: 220px;
			height: 25px;
			border :1px solid #aaa;
			padding: 3px 8px;
			border-radius: 5px;
		}

		.contact ul li input:focus{
			border-color: #c00;
		}

		.contact ul li input[type=text]{
			transition: padding .25s;
			-o-transition: padding  .25s;
			-moz-transition: padding  .25s;
			-webkit-transition: padding  .25s;
		}

		.contact ul li input[type=password]{
			transition: padding  .25s;
			-o-transition: padding  .25s;
			-moz-transition: padding  .25s;
			-webkit-transition: padding  .25s;
		}

		.contact ul li input:focus{
			padding-right: 70px;
		}
		.contact ul li .select{
		width:240px;height:34px;boeder: 1px solid #aaa;border-radius:5px;list-style:none;
		}
		.btn{
			position: relative;
			left:200px;
			
		}
		.btn>.submit{
			height:30px;
			width:100px;
			margin-top:30px;
			margin-bottom:30px;
		}
		.reset{
			height:30px;
			width:100px;
			margin-top:30px;
			margin-left:60px;
		}
		.tips{
			color: rgba(0, 0, 0, 0.5);
			padding-left: 10px;
		}

		.tips_true,.tips_false{
			padding-left: 10px;
		}

		.tips_true{
			color: green;
		}

		.tips_false{
			color: red;
		}

  </style>
  
  
 <script type="text/javascript">
		//判断姓名
	    function checkna(){
			na=form1.yourname.value;
			if( na.length <1 || na.length >12)  
	  		{  	
	  			divname.innerHTML='<font class="tips_false">长度是1~12个字符</font>';
	  		}else{  

	  		    divname.innerHTML='<font class="tips_true">输入正确</font>';
	  		    
	  		}  
	  }
	    //判断年龄
	    function checkage(){
	    	age=form1.yourage.value;
	    	if( age.length <1 || age.length >12)  
	  		{  	
	  			divage.innerHTML='<font class="tips_false" style="color:red;">长度是1~12个字符</font>';
	  		}else{  

	  		    divage.innerHTML='<font class="tips_true">输入正确</font>';
	  		}  
	    }

	    //判断性别
	    function checksex(){
	    	sex=form1.yoursex.value;
	    	if( sex.length <1 || sex.length >12)  
	  		{  	
	  			divsex.innerHTML='<font class="tips_false" style="color:red;">长度是1~12个字符</font>';
	  		}else{  

	  		    divsex.innerHTML='<font class="tips_true">输入正确</font>';
	  		}  
	    }
	  //验证密码 

		function checkpsd1(){    
			psd1=form1.yourpass.value;  
			var flagZM=false ;
			var flagSZ=false ; 
			var flagQT=false ;
			if(psd1.length<6 || psd1.length>12){   
				divpassword1.innerHTML='<font class="tips_false">长度错误</font>';
			}else
				{   
				  for(i=0;i < psd1.length;i++)   
					{    
						if((psd1.charAt(i) >= 'A' && psd1.charAt(i)<='Z') || (psd1.charAt(i)>='a' && psd1.charAt(i)<='z')) 

						{   
							flagZM=true;
						}

						else if(psd1.charAt(i)>='0' && psd1.charAt(i)<='9')    

						{ 
							flagSZ=true;
						}else    

						{ 
							flagQT=true;
						}   

					}   

					if(!flagZM||!flagSZ||flagQT){

					divpassword1.innerHTML='<font class="tips_false">密码必须是字母数字的组合</font>'; 

					}else{

					divpassword1.innerHTML='<font class="tips_true">输入正确</font>';

					}  

				}	

		}

		//验证确认密码 

		function checkpsd2(){ 

				if(form1.yourpass.value!=form1.yourpass2.value & form1.yourpass2.value!=null) { 

				     divpassword2.innerHTML='<font class="tips_false">您两次输入的密码不一样</font>';

				} else { 

				     divpassword2.innerHTML='<font class="tips_true">输入正确</font>';

				}

		}

		//验证邮箱


		function checkmail(){

					apos=form1.youremail.value.indexOf("@");

					dotpos=form1.youremail.value.lastIndexOf(".");

					if (apos<1||dotpos-apos<2) 

					  {
					  	divmail.innerHTML='<font class="tips_false">输入错误</font>' ;
					  }
					else {

						divmail.innerHTML='<font class="tips_true">输入正确</font>' ;

					}

		}

  </script>

</head>
<body>
<%@include file="../include/fore/top.jsp"%>
<div class="contact" >

		<form name="form1" method="post" action="foreupdateuseruser">
		<h1 style="margin-top:70px;;text-align:center;margin-bottom:40px;">修改个人信息</h1>
			<ul>
				<input id="id" name="id" value="${user.id }" style="display:none">
				<li>
					<label>姓名：</label>
					<input type="text" name="name" value="${user.name }" onblur="checkna()" required/><span class="tips" id="divname">长度1~12个字符</span>
				</li>
				<li>
					<label>年龄：</label>
					<select class="select" name="age">
						<option>10岁以下</option>
						<option>10~20</option>
						<option>21~30</option>
						<option>31~40</option>
						<option>41~50</option>
						<option>51~60</option>
						<option>60岁以上</option>
					</select>
					<span class="tips" id="divsex">长度1~5个字符</span>
					<!-- <input type="text" name="yourage" placeholder="请输入你的年龄"   onblur="checkage()" required/><span class="tips" id="divage">长度1~12个字符</span> -->
				</li>
				<li>
					<label>性别：</label>
					<select class="select" name="sex">
						<option>男</option>
						<option>女</option>
					</select>
					<span class="tips" id="divsex">长度1~5个字符</span>
					<!-- <input type="text" name="yoursex" placeholder="请输入你的性别"  onblur="checksex()" required/><span class="tips" id="divsex">长度1~10个字符</span> -->
				</li>
				<li>
					<label>密码：</label>
					<input type="password" name="yourpass" placeholder="请输入你的密码" onblur="checkpsd1()" required/><span class="tips" id="divpassword1">密码必须由字母和数字组成</span>
				</li>
				<li>
					<label>确认密码：</label>
					<input type="password" name="password" placeholder="请再次输入你的密码" onblur="checkpsd2()" required/><span class="tips" id="divpassword2">两次密码需要相同</span>
				</li>
				<li>
					<label>电子邮箱：</label>
					<input type="text" name="email" placeholder="请输入你的邮箱" onblur="checkmail()" required/><span class="tips" id="divmail"></span>
				</li>
			</ul>
			<b class="btn">
			<input type="submit" value="提交" class="submit"/>
			<input type="reset" value="取消" class="reset"/>
			</b>
		</form>
<%@include file="../include/fore/footer.jsp"%>
	</div>
</body>
</html>