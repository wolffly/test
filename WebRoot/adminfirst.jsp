<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="dao.LiftTitle"%>
<%@ page import="dto.dtoground"%>
<%@ page import="dto.dtopost"%>
<%@ page import="dto.dtoground"%>
<%@page import="dao.postselect"%>
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
		<title>管理员首</title>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<meta http-equiv="pragma" content="no-cache">

		<style type="text/css">
<!--
#Layer1 {
	position: absolute;
	width: 225px;
	height: 388px;
	z-index: 1;
	left: -8px;
	top: 87px;
}

#Layer2 {
	position: absolute;
	width: 819px;
	height: 373px;
	z-index: 2;
	left: 352px;
	top: 93px;
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

	</head>

	<body>
		<tr>
			<td width="749" height="35" align="right"
				style="padding-right: 50px; line-height: 26px;">
				您好<%=session.getAttribute("name")%>,欢迎登录负离子论坛！
				<a href="zhuce.html" target="mainf">[注册]</a>
				<a href="login.html" target="mainf">[登录]</a>
		</tr>
		<tr>		
				<a href="adminuser.jsp" target="mainf">[用户管理]</a>
				<a href="adminfatielist.jsp" target="mainf">[帖子管理]</a>
			</td>
		</tr>
		<table width="749" border="0" cellpadding="0" cellspacing="0"
			bordercolor="#FFFF66">
			<tr>
				<td width="749" height="35">
					<font size="20px" color="red"> 最新八条帖 </font>
				</td>
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
