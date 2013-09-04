<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>用户注册界面</title>
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
		<font>当前所在位置>>用户注册</font>
		<br/>
		<br/>
	</div>
	<center>
	<div>	
  		<font>用户注册</font>
    		<s:form action="adduser.action" method="post">
    		<table align="center">	    	
	    	<!-- 姓名 -->
	    	<s:textfield name="user.name" label="姓名"/>
	    	

			<!-- 密码 -->
	    	<tr>
	    		<td><s:password name="user.password" label="密码"/></td>	    		
	    	</tr>
	    	
	    	<!-- 密码 -->
	    	<tr>
	    		<td><s:password name="user.repassword" label="重复密码"/></td>	    		
	    	</tr>
	    	
			<!-- 身份证 -->
	    	<tr>
	    		<td><s:textfield name="user.cardId" label="身份证号码"/></td>
	    		
	    	</tr>
	    	<!-- 性别 -->
	    	<tr>
	    		<td><s:radio list="{'男','女'}" name="user.sex" value="1" label="性别"/></td>
	    	</tr>	    
	    	<!-- email -->
	    	<tr>
	    		<td><s:textfield name="user.email" label="电子邮箱"/></td>
	    	</tr>	    	
	    			    
	    		    		    		    		    	
	    	<!-- 提交按钮和重置按钮 -->
	    	<tr>
	    		<td>
	    			<input type="submit" value="注册"/>
	    		</td>
	    		<td>
	    			<input type="reset" value="重置">
	    		</td>
	    	</tr>	    		    	
    	</table>
      </s:form>
      </div>
    	</center>
  </body>
</html>
