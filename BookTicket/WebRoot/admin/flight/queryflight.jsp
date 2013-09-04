<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>    
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
		<font>当前所在位置>>用户管理>>查询航班</font>
		<br/>
		<br/>
	</div>
	<center>
	<div>	
  		<font>根据需求查询用户</font>
    <s:form action="queryAFlight.action">
    	<table width="20%">
    		<tr>
	    			<td>航班号</td>
	    			<td>
	    				<input type="text" name="flight.flightNo">
	    			</td>
	    		</tr>
	    		<tr>
	    			<td>起飞时间</td>
	    			<td>
	    				<input type="text" name="flight.starttime">
	    			</td>
	    		</tr>
	    		<tr>
	    			<td>到达时间</td>
	    			<td>
	    				<input type="text" name="flight.lasttime">
	    			</td>
	    		</tr>
	    		<tr>
	    			<td>起飞地点</td>
	    			<td>
	    				<select name="flight.startAddress">
	    					<option value="请选择..">请选择..</option>
	    					<option value="北京">北京</option>
	    					<option value="广州">广州</option>
	    					<option value="上海">上海</option>
	    					<option value="深圳">深圳</option>
	    					<option value="长沙">长沙</option>
	    					<option value="昆明">昆明</option>
	    					<option value="天津">天津</option>
	    					<option value="大连">大连</option>
	    					<option value="厦门">厦门</option>
	    				</select>
	    			</td>
	    		</tr>
	    		<tr>
	    			<td>到达地点</td>
	    			<td>
	    				<select name="flight.lastAddress">
	    					<option value="请选择..">请选择..</option>
	    					<option value="北京">北京</option>
	    					<option value="广州">广州</option>
	    					<option value="上海">上海</option>
	    					<option value="深圳">深圳</option>
	    					<option value="长沙">长沙</option>
	    					<option value="昆明">昆明</option>
	    					<option value="天津">天津</option>
	    					<option value="大连">大连</option>
	    					<option value="厦门">厦门</option>
	    				</select>
	    			</td>
	    		</tr>
    		<tr>
    			<td><input type="submit" value="查找"/></td>
    		</tr>
    	</table>
    </s:form>
    </div>
    </center>
  </body>
</html>
