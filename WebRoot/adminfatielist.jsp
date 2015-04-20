<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="dto.*"%>
<%@ page import="dao.*"%>
<%request.setCharacterEncoding("UTF-8");%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>帖子管理</title>
		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
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
					您好<%=session.getAttribute("name")%>,欢迎登录负离子论坛！&nbsp;&nbsp;&nbsp;&nbsp;
					<a href="adminfirst.jsp">返回主页</a> 
				</td>
			</tr>
		</table>
		<table width="93%" align="center" cellpadding="9" cellspacing="0" border="2" bordercolor="#ffffff">
			<tr bgcolor="#edebbe" bordercolor="#000000">
			  <td width="13%" bgcolor="#FF3333" align="center"> 操作</td>
			  	<td width="17%" bgcolor="#CCCC33" align="center">帖子ID</td>
				<td width="40%" bgcolor="#CCCC33" align="center"> 标题</td>
				<td width="13%" bgcolor="#FFFF66" align="center">楼主</td>
				<td width="17%" bgcolor="#66FFFF" align="center">时间</td>
			</tr>
			<%
				fatielist f = new fatielist();
				List<dtopost> li = f.selectall();
				for (dtopost sa : li) {
			%>
			<tr bgcolor="#edebbe" bordercolor="#000000">
			  <td width="13%" bgcolor="#FF3333" align="center"><input type="button" value="删除" 
			  onclick="window.location.href='deletepost.jsp?post_id=<%=sa.getPost_id()%>'"></td>
				<td width="17%"" bgcolor="#CCCC33" align="center"><%=sa.getPost_id() %></td>
				<td width="40%" bgcolor="#CCCC33" align="center"><%=sa.getTitle()%></td>
				<td width="13%"" bgcolor="#FFFF66" align="center"><%=sa.getUser_name()%></td>
				<td width="17%"" bgcolor="#66FFFF" align="center"><%=sa.getPosttime()%></td>
			</tr>
			<%
				}
			%>
	</table>
	</body>
</html>
