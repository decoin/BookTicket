<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    
    <title>查询航班结果</title>
    <SCRIPT type="text/javascript">
    	function del()
		{
			if(confirm("确定要删除该航班吗?"))
				return true;
			return false;
		}	
    </SCRIPT>

  </head>
  
  <body>
    <s:include value="queryflight.jsp"></s:include>
    <center>
    <br/><br/>

    	<font color="red">查询的所有航班信息</font>
    
     <table border="1">
   		<tr>
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
    				<s:property value="#flights.dollars"/>
    			</td>
    			<td>
    				<s:property value="#flights.number"/>
    			</td>
    			<td>
    				<s:property value="#flights.remains"/>
    			</td>
    			<td><s:a href="deleteFlight.action?id=%{#flights.flight_id}" onclick="{return del();}" id="in">删除</s:a> </td>
		    	<td><s:a href="updatePFlight.action?id=%{#flights.flight_id}" id="in">修改</s:a></td>		    	
    		</tr>
    	</s:iterator>
    </table>
    </center>
  </body>
</html>
