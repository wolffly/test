<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="dto.dtopost"%>
<%@page import="dao.postselect"%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<base href="<%=basePath%>">

		<title>My JSP 'mainf.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>

	<style type="text/css">
<!--
#Layer1 {
	position: absolute;
	width: 225px;
	height: 388px;
	z-index: 1;
	left: 13px;
	top: 87px;
}

#Layer2 {
	position: absolute;
	width: 819px;
	height: 373px;
	z-index: 2;
	left: 248px;
	top: 98px;
}

.STYLE1 {
	color: #66FFFF
}

body {
	background-color: #FFCC99;
}

body,td,th {
	color: #0000FF;
}

p {
	color: green;
	font-size: 20px;
	font-family: Monaco;
}
-->
</style>
	<body>
		<table width="749" border="0" cellpadding="0" cellspacing="0"
			bordercolor="#FFFF66">
			<tr>
				<td width="90%" height="35">
					<font size="20px" color="red"> 最新八条帖 </font>
				</td>
				<td width="5%" align="center"><a href = "login.html">登入</a></td>
			</tr>
		</table>
		<table width="90%" align="center" cellpadding="9" cellspacing="0"
			border="2" bordercolor="#ffffff">
			<tr bgcolor="#edebbe" bordercolor="#000000">
				<td width="35%" bgcolor="#CCCC33">
					标题
				</td>
				<td width="20%" bgcolor="#FFFF66">
					楼主
				</td>
				<td width="15%" bgcolor="#66FFFF">
					时间
				</td>
				<td width="15%" align="center" bgcolor="#FFCC00">
					分类
				</td>
			</tr>

			<%
				postselect pl = new postselect();
				List<dtopost> u = pl.postse();
				for (dtopost s : u) {
			%>
			<tr bgcolor="#edebbe" bordercolor="#000000">
				<td width="35%" bgcolor="#CCCC33">
					<%=s.getTitle()%>
				</td>
				<td width="20%" bgcolor="#FFFF66">
					<%=s.getUser_name()%>
				</td>
				<td width="15%" bgcolor="#66FFFF">
					<%=s.getPosttime()%>
				</td>
				<td width="15%" align="center" bgcolor="#FFCC00">
					<%=s.getGround_name()%>
				</td>
			</tr>
			<%
				}
			%>
		</table>
	</body>
</html>
