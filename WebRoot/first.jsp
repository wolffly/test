<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="dao.LiftTitle"%>
<%@ page import="dto.dtoground"%>
<%@ page import="dto.dtopost"%>
<%@ page import="dto.dtoground"%>
<%@page import="dao.postselect"%>
<% request.setCharacterEncoding("UTF-8");%>
<%
	String path = request.getContextPath();
	String basePath = request.getScheme() + "://"
			+ request.getServerName() + ":" + request.getServerPort()
			+ path + "/";
%>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
	<head>
		<title>首页</title>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<meta http-equiv="pragma" content="no-cache">

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

#Layer3 {
	position: absolute;
	width: 1054px;
	height: 79px;
	z-index: 3;
	left: 12px;
	top: 484px;
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

-->
p {
	color: green; /*字体颜色*/
	font-size: 20px; /*大小*/
	font-family: Monaco; /*字体*/
}
</style>

	</head>

	<body>
		<table width="100%" border="0" cellpadding="0" cellspacing="0"
			background="../images/frame/topbg.jpg">
			<tr>
				<td width='20%' height="70" align="left">
					&nbsp;
					<img src="images/frame/logo.jpg" alt="q" width="231" height="70" />
				</td>
				<td width='80%' height="70" align="right" valign="bottom">
					<table width="749" border="0" cellpadding="0" cellspacing="0"
						bordercolor="#FFFF66">
						<tr>
							<td width="749" height="35">
								<font size="25px" color="red">
									最新八条帖
								</font>
							</td>
							<td width="749" height="35" align="right"
								style="padding-right: 50px; line-height: 26px;">
								您好<%=session.getAttribute("name")%>,欢迎登录负离子论坛！
								<a href="zhuce.html">[注册]</a>
								<a href="login.html">[登录]</a>
							</td>
						</tr>

					</table>
				</td>
			</tr>
		</table>
		<div id="Layer1">
			<ul class='sitemu STYLE1'>
				<p>&nbsp;</p>
				<p>帖子分类 ：</p>
				<%
					LiftTitle lt = new LiftTitle();
					List<dtoground> l = lt.ltitle();
					int ground_id = 0;
					for (dtoground dto : l) {
				%>
				<p>
					<a
						href="fatielist.jsp?name=<%=dto.getGround_name()%>&id=<%=dto.getGround_id()%>"><%=dto.getGround_name()%>
					</a>
				</p>
				<%
					}
				%>
				<p>
					<a href="author.html">作者简介</a>
				</p>
			</ul>
			
		</div>
		<p>&nbsp;
			
		</p>
		<div id="Layer2">
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
		</div>
	</body>
</html>
