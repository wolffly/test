<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="dto.*"%>
<%@ page import="dao.*"%>

<%
	request.setCharacterEncoding("UTF-8");
%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>用户管理</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
		<link rel="stylesheet" href="../skin/css/post.css" type="text/css" />

		<style type="text/css">
<!--
body {
	background-color: #FFCC99;
}
-->
</style>
	</head>
	<body>
		<table width="100%" cellpadding="10">
			<tr id="tr2">
				<td> 
					&nbsp;&nbsp; 您好<%=session.getAttribute("name")%>,欢迎登录负离子论坛！&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="adminfirst.jsp">返回主页</a>
				</td>
			</tr>
		</table>
		<table width="93%" align="center" cellpadding="9" cellspacing="0" border="2" bordercolor="#ffffff">
			<tr bgcolor="#edebbe" bordercolor="#000000">
				<td width="20%" bgcolor="#FF3333">删除</td>
				<td width="30%" bgcolor="#FF9900">用户ID</td>
				<td width="30%" bgcolor="#CCCC33">用户名</td>
				<td width="20%" bgcolor="#66FFFF">注册时间</td>
			</tr>
			<%
				User u = new User();
				List<dtouser> lu = u.select();
				for (dtouser us : lu) {
				
			 %>
			
			<tr bgcolor="#edebbe" bordercolor="#000000">
				<td width="20%" bgcolor="#FF3333">
<input type="button" value="删除" onclick="window.location.href='admindelete.jsp?id=<%=us.getUser_id()%>'">
				<td width="30%" bgcolor="#FF9900"><%=us.getUser_id()%></td>
				<td width="30%" bgcolor="#CCCC33"><%=us.getUser_name()%></td>
				<td width="20%" bgcolor="#66FFFF"><%=us.getDesigntime()%></td>
			</tr>
			<%} %>
		</table>
	</body>
</html>
