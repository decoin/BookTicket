<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>  
    <title>查找用户界面</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
    <s:include value="queryuser.jsp"></s:include>
    <center>
    
    <table border="1" width="40%">
    <tr>
    	<td>
    		查找的所有用户列表为:
    	</td>
    	
    </tr>
    	<tr>
    		<td>用户序号</td>
    		<td>用户名</td>
    		<td>用户ID</td>
    	</tr>
    	<s:iterator value="#request.list" id="user">
    		<tr id="line">
    			<td>
    				<s:property value="#user.id"/>
    			</td>
    			<td>
    				<s:property value="#user.name"/>
    			</td>
    			<td>
    				<s:property value="#user.cardId"/>
    			</td>
    		</tr>
    	</s:iterator>
    </table>
    </center>
  </body>
</html>
