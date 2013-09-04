<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ taglib prefix="s" uri="/struts-tags"%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>更新学生界面</title>
 <script type="text/javascript" src="../../js/js.js"></script>	
	<link href="../../css/css.css" rel="stylesheet" type="text/css" media="screen"/>
	<script type="text/javascript" src="../../js/jquery-1.3.2.min.js"></script>
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
	function del()
	{
		if(confirm("确定要删除该学生吗?"))
			return true;
		return false;
	}	
	</script>
  </head>
  
  <body>  
   <center>
		<div align="center">
			<div id="wrapper">
			<img src="../../images/fly.png">
			</div>
			<div>
		 <ul id="bookticket_com" class="first-menu">
		  <li><a href="#" target="_self">用户管理</a>
			    <ul style="display: none;"  class="second-menu">
			      <li><a href="/BookTicket/admin/user/queryuser.jsp" class="bookticket" target="_self">查询用户</a></li>
			      <li><a href="queryUser.action" class="bookticket" target="_self">用户列表</a></li>
			    </ul>
		  	</li>
			  <li><a href="#" target="_self">航班管理</a>
			    <ul class="second-menu">
			      <li><a href="/BookTicket/admin/flight/addflight.jsp" class="bookticket" target="_self">添加航班</a></li>
			      <li><a href="/BookTicket/admin/flight/queryflight.jsp" class="bookticket" target="_self">查询航班</a></li>
			      <li><a href="queryFlight.action" class="bookticket" target="_self">航班列表</a></li>
			    </ul>
			  </li>
		  <li><a href="#" class="bookticket" target="_self">订单管理</a>
		    <ul style="display: none;" class="second-menu">
		      <li><a href="#" class="bookticket" target="_self">订单列表</a></li>
		      <li><a href="#" class="bookticket" target="_self">查询订单</a></li>
		      <li><a href="#" class="bookticket" target="_self">修改订单</a></li>
		    </ul>
		  </li>
		  <li>
		  	<font size="3px" style="text-align:center;color=#ffffff;margin-top:20px">
		  	<b>
		  	<script language=javascript type=text/javascript>document.write(TODAY);</script></b>
		  	</font>
		  	<font color="red" size="2">
		  	
		  		<s:property value="#session.name"/>
		  		</font>
		  </li>
		</ul>
		</div>
		</div>
	</center>
	<div  id="add">
		<font>当前所在位置>>用户管理>>更新用户</font>
		<br/>
		<br/>
	</div>
	<center>
	<div>	
  		<font>更新用户</font>
    <s:form action="updateUser.action">
    	
    	<table>
    		<tr>
    			<td>
    				<s:hidden name="user.id" value="%{user.id}"/>
    			</td>
    		</tr>
    		
    		<tr>
    			<td>
    				用户名
    			</td>
    			<td>
    				<s:textfield name="user.name" value="%{user.name}"></s:textfield>
    			</td>
    		</tr>
    		
    		<tr>
				<td>
					用户ID
				</td>   
				<td>
					<s:textfield name="user.cardId" value="%{user.cardId}"></s:textfield>
				</td> 		
    		</tr>
    		
    		<tr>
				<td>
					邮箱
				</td>   
				<td>
					<s:textfield name="user.email" value="%{user.email}"></s:textfield>
				</td> 		
    		</tr>
    		<tr>
				<td>
					性别
				</td>   
				<td>
					<s:textfield name="user.sex" value="%{user.sex}"></s:textfield>
				</td> 		
    		</tr>
    		
    		<tr>
				<td>
					手机号码
				</td>   
				<td>
					<s:textfield name="user.telephone" value="%{user.telephone}"></s:textfield>
				</td> 		
    		</tr>
    		<tr>
				<td>
					地址
				</td>   
				<td>
					<s:textfield name="user.address" value="%{user.address}"></s:textfield>
				</td> 		
    		</tr>
    		
    		<s:submit name="sumbit" value="修改" ></s:submit>
    		<a type="buttom" href="index.jsp">取消</a>
    		
    	</table>
    </s:form>
    </div>
    </center>
  </body>
</html>
