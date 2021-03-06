<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>    
    <title>航班列表</title>   
    <script type="text/javascript" src="/BookTicket/js/js.js"></script>	
	<link href="/BookTicket/css/css.css" rel="stylesheet" type="text/css" media="screen"/>
	<script type="text/javascript" src="/BookTicket/js/jquery-1.3.2.min.js"></script>
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
			if(confirm("确定要删除该航班吗?"))
				return true;
			return false;
		}	
	</script>
  </head>
  
  <body>  
  <center>
  		<div align="center">
			<div id="wrapper">
				<img src="/BookTicket/images/fly.png">
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
			      <li><a href="#" class="bookticket" target="_self">删除订单</a></li>
			    </ul>
			  </li>
			  <li><font size="3px" style="text-align:center;color=#ffffff;margin-top:20px"><b>
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
		<font>当前所在位置>>航班管理>>航班列表</font>
	</div>
	<center>
  	 <font>航班列表</font> 	
     <table cellspacing="1" border="1" width="60%">
    	<tr>
    		<td>序号</td>
    		<td>航班号</td>
    		<td>起飞地点</td>
    		<td>到达地点</td>
    		<td>起飞时间</td>
    		<td>到达时间</td>
    		<td>金额</td>
    		<td>数量</td>
    		<td>余票</td>
    		<td>删除</td>
    		<td>更新</td>
    	</tr>    	
    	 	
	    	<s:iterator value="#request.list" id="flight">
		    	<tr id="line">
		    		<td><s:property value="#flight.flight_id"/> </td>
		    		<td><s:property value="#flight.flightNo"/> </td>
		    		<td><s:property value="#flight.startAddress"/> </td>
		    		<td><s:property value="#flight.lastAddress"/> </td>
		    		<td><s:property value="#flight.starttime"/> </td>
		    		<td><s:property value="#flight.lasttime"/> </td>
		    		<td><s:property value="#flight.dollars"/> </td>
		    		<td><s:property value="#flight.number"/> </td>
		    		<td><s:property value="#flight.remains"/> </td>
		    		<td><s:a href="deleteFlight.action?id=%{#flight.flight_id}" onclick="{return del();}" id="in">删除</s:a> </td>
		    		<td><s:a href="updatePFlight.action?id=%{#flight.flight_id}" id="in">修改</s:a></td>		    	
		    	</tr>  	
	    	</s:iterator>
    	
    	
    	</table>
    	<br/>
    	<!-- 分页部分 -->
    	<div>
    		<jsp:include page="/commons/pagelist.jsp"></jsp:include>
    	</div>
    	</center>
  </body>
</html>
