<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>    
    <title>首页</title>
	<script type="text/javascript" src="../js/js.js"></script>	
	<link href="../css/css.css" rel="stylesheet" type="text/css" media="screen"/>
	<script type="text/javascript" src="../js/jquery-1.3.2.min.js"></script>
	<script type=text/javascript>
	$(function(){
	$('#mobanwang_com li').hover(function(){
		$(this).children('ul').stop(true,true).show('slow');
	},function(){
		$(this).children('ul').stop(true,true).hide('slow');
	});
	
	$('#mobanwang_com li').hover(function(){
		$(this).children('div').stop(true,true).show('slow');
	},function(){
		$(this).children('div').stop(true,true).hide('slow');
	});
	});
	var d=new Date();
	var day = d.getDay();
	var monthname=new Array("1月","2月","3月","4月","5月","6月","7月","8月","9月","10月","11月","12月");
	var weekname=new Array("星期天","星期一","星期二","星期三","星期四","星期五","星期六");
	var TODAY = d.getFullYear() +"年"+ monthname[d.getMonth()] + d.getDate()+"日"+weekname[day];
	
</script>

</head>
<body>
	<center>
		<div align="center">
			<div id="wrapper">
			<img src="../images/fly.png">
			</div>
			<div>
		 <ul id="mobanwang_com" class="first-menu">
		  <li><a href="#" target="_self">用户管理</a>
		    <ul style="display: none;"  class="second-menu">
		      <li><a href="/BookTicket/admin/user/queryuser.jsp" class="mobanwang" target="_self">查询用户</a></li>
		      <li><a href="queryUser.action" class="mobanwang" target="_self">用户列表</a></li>
		    </ul>
		  </li>
		  <li><a href="#" target="_self">航班管理</a>
		    <ul class="second-menu">
		      <li><a href="/BookTicket/admin/flight/addflight.jsp" class="mobanwang" target="_self">添加航班</a></li>
		      <li><a href="#" class="mobanwang" target="_self">修改航班</a></li>
		      <li><a href="#" class="mobanwang" target="_self">查询航班</a></li>
		      <li><a href="#" class="mobanwang" target="_self">删除航班</a></li>
		      <li><a href="#" class="mobanwang" target="_self">航班列表</a></li>
		    </ul>
		  </li>
		  <li><a href="#" class="mobanwang" target="_self">订单管理</a>
		    <ul style="display: none;" class="second-menu">
		      <li><a href="#" class="mobanwang" target="_self">订单列表</a></li>
		      <li><a href="#" class="mobanwang" target="_self">查询订单</a></li>
		      <li><a href="#" class="mobanwang" target="_self">修改订单</a></li>
		    </ul>
		  </li>
		  <li>
		  	<font size="3px" style="text-align:center;color=#ffffff;margin-top:20px">
		  	<b>
		  	<script language=javascript type=text/javascript>document.write(TODAY);</script></b>
		  	</font>
		  </li>
		</ul>
		</div>
		</div>
	</center>
</body>
</html>
