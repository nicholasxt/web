<%@ page language="java" import="java.util.*" 
		 contentType="text/html; charset=utf-8"%>
<%request.setCharacterEncoding("utf-8");%>
<%
	String loginResult = request.getParameter("loginResult");
	String hintToUser = "";
	if (loginResult != null && loginResult.equals("false")) {
		hintToUser = "<p id=\"hint\">用户名或密码错误</p>";
	}
%>
<!DOCTYPE HTML>
<html>
<head>
    <meta content="text/html;charset=utf-8">
    <title>layout1</title>
	<style type="text/css">
		#header_outer{background:rgb(255,101,55);height:150px;}
		#header{width:800px;height:150px;margin:0 auto;}
		#title{color:white;font-size:30px;font-weight:bold;padding-top:50px;}
		
		#nav{height:60px;margin:0 auto;margin-top:15px;width:800px;}
		#nav >li>a{ color:black;text-decoration:none;}
		#nav > li {
			width:70px; 
			height:25px;
			text-align:center;
			float:left;
			padding-top:6px;
			list-style-type:none;
			background:rgb(255,101,55);
			border-radius:20px;
		}
		
		#main {
			width:800px;
			margin:0 auto;
		}
		#image {
			width:800px;
			height:400px;
			margin:0 auto;
			background:url("web.jpg");
			background-size:800px 400px;
			background-repeat:no-repeat;
		}
		
		#postForm{
			float:left;
			width:150px;
			height:200px;
			background:rgb(255,101,55);
		}
		.input{
			width:145px;
		}
		#postFormContent{
			width:150px;
			height:200px;
			padding-top:40px;
		}
		#login_title{
			text-align:center;
		}
		.board{
			width:200px;
			height:420x;
			border:grey 1px solid;
		}
		.date{
			float:right;
			padding-top:15px;
		}
		.more{
			float:right;
			margin-top:15px;
		}
		.link{
			float:left;
			width:9em;
			overflow: hidden; 
			text-overflow: ellipsis;
			white-space: nowrap;
			padding-top:15px;
		}
		.boardcontent {
			list-style-type:none;
		}
		.clear{
			clear:both;
		}
		.li {
			width:189px;
			height:50px;
			padding:5px;
			border:grey 1px solid;
		}
		.boardmenu{
			width:189px;
			height:50px;
		}
		#paper{
			float:left;
		}
	</style>
</head>
<body>
    <div id="header_outer">
        <div id="header" class="wrapper">
             <p id="title"> SMIE Web Design </p>
         </div><!--header-->
    </div>
    <!--header end-->
	<div id="nav">
	   <ul class="wrapper" id="nav">
	        <li><a href="#" class="nav_hover">首页</a></li>
	        <li><a href="#">作业提交</a></li>
	        <li><a href="#">作业下载</a></li>
	        <li><a href="#">公告</a></li>
	         <li><a href="#">作业布置</a></li>
	   </ul>
	 </div>
	<div id="postForm">
		<div id="postFormContent">
			<div id="login_title">登陆</div>
			<form action="homepage.jsp" method="post">
				<label for="user_id">学号：</label><br/>
				<input type="text" name="user_id" class="input"/><br/>
				<label for="password">密码：</label><br/>
				<input type="password" name="password" class="input"/><br/>
				<div class="Center" id="twoBtnStyle">
					<input type="submit" value="登录" name="commit" />
					<input type="button" value="修改密码" onclick="jumpUpadtePassword();" />
				</div>
			</form>
		</div>
	</div>
	<div id="main">
		<div id="image"></div>
		<div id="paper" class="board">
	        <div class="boardmenu">
	            <div class="link">
	                <span>资讯</span>
	            </div>
	            <div class="more"><a href="#">&#8250;&#8250;more</a></div>
	            <div class="clear"></div>
	        </div>
	        <div class="boardcontent">
	        	<div class="li"><div class="link"><a href="#">超越北上广！福州再次成为中国最宜居城市</a></div><div class="date">06-11</div><div class="clear"></div></div>
	        	<div class="li"><div class="link"><a href="#">超越北上广！福州再次成为中国最宜居城市</a></div><div class="date">06-11</div><div class="clear"></div></div>
	        	<div class="li"><div class="link"><a href="#">超越北上广！福州再次成为中国最宜居城市</a></div><div class="date">06-11</div><div class="clear"></div></div>
	        	<div class="li"><div class="link"><a href="#">超越北上广！福州再次成为中国最宜居城市</a></div><div class="date">06-11</div><div class="clear"></div></div>
	        	<div class="li"><div class="link"><a href="#">超越北上广！福州再次成为中国最宜居城市</a></div><div class="date">06-11</div><div class="clear"></div></div>
	        	<div class="li"><div class="link"><a href="#">超越北上广！福州再次成为中国最宜居城市</a></div><div class="date">06-11</div><div class="clear"></div></div>
	        	<div class="li"><div class="link"><a href="#">超越北上广！福州再次成为中国最宜居城市</a></div><div class="date">06-11</div><div class="clear"></div></div>
		    </div>
    	</div>
	</div>
</body>
</html>