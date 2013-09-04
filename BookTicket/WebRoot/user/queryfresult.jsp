<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags"  %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>   
    <title>用户查询航班界面</title>
  </head>
  
  <body>
    <s:include value="queryflight.jsp"></s:include>
    <center>
    <table border="1">
   		<tr>
    		<td>航班号</td>
    		<td>起飞地点</td>
    		<td>到达地点</td>
    		<td>起飞时间</td>
    		<td>到达时间</td>
    		<td>进行订票</td>
    	</tr>
    	<s:iterator value="#request.flights" id="flights">
    		<tr id="line">
    			<td>
    				<s:property value="#flights.flightNo"/>
    			</td>
    			<td>
    				<s:property value="#flights.startAddress"/>
    			</td>
    			<td>
    				<s:property value="#flights.lastAddress"/>
    			</td>
    			<td>
    				<s:property value="#flights.starttime"/>
    			</td>
    			<td>
    				<s:property value="#flights.lasttime"/>
    			</td>
    			<td>
    				<a href="addOrderlist.action?flightno=<s:property value="#flights.flightNo"/>" id="in">加入购物车</a>
    			</td>
    		</tr>
    	</s:iterator>
    </table>
    </center>
  </body>
</html>
