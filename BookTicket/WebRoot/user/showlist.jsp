<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>我的购物车</title>
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
			<div>		
		 <ul id="bookticket_com" class="first-menu">
		  <li><a href="#" target="_self">个人信息</a>
		    <ul style="display: none;"  class="second-menu">
		      <li><a href="updatePassword.action?name=<s:property value="#session.name"/> " class="bookticket" target="_self">修改密码</a></li>
		      <li><a href="queryMUser.action?name=<s:property value="#session.name"/>" class="bookticket" target="_self">查看信息</a></li>	
		    </ul>
		  </li>
		  <li><a href="#" target="_self">航班查询</a>
		    <ul class="second-menu">
		      <li><a href="/BookTicket/user/queryflight.jsp" class="bookticket" target="_self">航班查询</a></li>
		      <li><a href="queryList.action" class="bookticket" target="_self">航班列表</a></li>
		    </ul>
		  </li>
		  <li><a href="#" class="bookticket" target="_self">个人订单</a>
		    <ul style="display: none;" class="second-menu">
		      <li><a href="orderlistshow.action" class="bookticket" target="_self">我的购物车</a></li>
		      <li><a href="countList.action?name=<s:property value="#session.name"/>" class="bookticket" target="_self">查看订单</a></li>
		      <li><a href="#" class="bookticket" target="_self">取消订单</a></li>
		    </ul>
		  </li>
		  <li><font size="3px" style="text-align:center;color=#ffffff;margin-top:20px">
		  <b><script language=javascript type=text/javascript>document.write(TODAY);</script></b>
		  	</font>&nbsp;&nbsp;
		  	<font color="red" size="2">
		  	登录名:
		  		<s:property value="#session.name"/>
		  		</font>
		  </li>
		</ul>
		</div>
		</div>
	</center>
		 <div  id="add">
		<font>当前所在位置>>个人订单>>购物车</font>
	</div>
	<center>
    <table border="1">
    	<tr>
    		<td>序列</td>
    		<td>航班号</td>
    		<td>金额</td>
    		<td>票数</td>  
    		<td>取消</td>		
    	</tr>
    	<s:iterator value="#request.odlist" id="odlist">
	    	<s:if test="%{#odlist.size==0}">
	    		您的购物车是空的,请先去订票吧!
	    	</s:if>
	    	<s:else>
	    		<tr id="line">
	    			<td>
	    				<s:property value="#odlist.orderlist_id"/>
	    			</td>
	    			<td>
	    				<s:property value="#odlist.flights.flightNo"/>
	    			</td>
	    			<td>
	    				<s:property value="#odlist.flights.dollars"/>
	    			</td>
	    			<td>
	    				<s:property value="#odlist.num"/>  				
	    			</td>
	    			<td>
	    				<a href="deleteOrderlist.action?orderlist_id=<s:property value="#odlist.orderlist_id"/>" id="in">取消</a>
	    			</td>
	    		</tr>
	    	</s:else>
	    	
    	</s:iterator>
    	<tr>
    		<td>
    			<a href="countList.action?name=<s:property value="#session.name"/>" id="in">结算</a>
    		</td>
    	</tr>
    </table>
    </center>
  </body>
</html>
