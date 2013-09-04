<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>   
     
    <title>用户登录界面</title>
	<script type="text/javascript" src="../js/js.js"></script>	
	<link href="../css/css.css" rel="stylesheet" type="text/css" media="screen"/>
	<script type="text/javascript" src="../js/jquery-1.3.2.min.js"></script>
	<script type=text/javascript>
	$(function(){
	$('#bookticket_com li').hover(function(){
		$(this).children('ul').stop(true,true).show('slow');
	},function(){
		$(this).children('ul').stop(true,true).hide('slow');
	});
	
	$('#bookticket_com li').hover(function(){
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
		</div>
		</center>
	<div id="add">
		<font>当前所在位置>>用户登录</font>
		<br/>
		<br/>
	</div>
	<center>
	<div>	
	<s:a href="/BookTicket/admin/login.jsp"><font color="red">管理员登录入口-></font></s:a>
	<br/>
  		<font>用户登录</font>&nbsp;&nbsp;&nbsp;
  		
    		<s:form action="loginUser.action" method="get">
    		<table align="center">	    	
	    		<s:textfield name="user.name" label="姓名"></s:textfield>	    		
	    		<s:password name="user.password" label="密码"></s:password>
				<s:submit name="submit" label="确定"></s:submit>	
				<s:reset name="reset" label="重新填写"></s:reset> 	    	
    	</table>
      </s:form>
      
      </div>
    	</center>
  </body>
</html>
