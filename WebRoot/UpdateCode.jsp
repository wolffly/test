<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'UpdateCode.jsp' starting page</title>
    
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
  <form action="UpdateCodeCheck.jsp" method="post"> 
   <table align="center">
  		<br><br><br><br><br>用&nbsp; 户&nbsp; 名<input type="text" name="user_name" value=""/> 
  		<br>旧&nbsp; 密&nbsp; 码<input type="password" name="user_pass" value=""/><br> 
  		新&nbsp; 密&nbsp; 码<input type="password" name="newpass" value=""/> 
  		<br>确认新密码<input type="password" name="qnewpass" value=""/><br>
  		<input type="submit" name="Submit" value="提交" />
  			<input type="reset" name="reset" value="重置" />
</table>
  	</form>
  </body>
</html>
