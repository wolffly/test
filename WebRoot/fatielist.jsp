<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="dto.dtopost"%>
<%@ page import="dto.dtoground"%>
<%@ page import="dao.fatielist"%>
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
		<title>查帖</title>

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
					<%
						session.setAttribute("ti_name", request.getParameter("name"));
					%>
					您好<%=session.getAttribute("name")%>,欢迎登录负离子论坛！
					<a href="zhuce.html" target="mainf">[注册]</a>
					<a href="login.html" target="mainf">[登录]</a>
					<a href="mainf.jsp" name="mainf" target="mainf">返回主页</a>》》<%=new String(request.getParameter("name").getBytes(
					"ISO-8859-1"), "UTF-8")%>
				</td>
				<td align="center" width="10%">
					<a href="fatie.jsp"><img src="images/frame/button.gif"
							width="108" height="42" border="0"> </a>
				</td>
				<td width="5%"></td>
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
					回复/查看
				</td>
			</tr>

			<%
				String idStr = (String) request.getParameter("id");
				session.setAttribute("g_id", idStr);
				dtopost dp = new dtopost();
				int id = Integer.parseInt(idStr);
				dp.setPost_id(id);
				fatielist fl = new fatielist();
				List<dtopost> l = fl.fatielist(dp);
				for (dtopost s : l) {
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
					<a href="fatielistone.jsp?id=<%=s.getPost_id()%>">回复/查看</a>
				</td>
			</tr>
			<%
				}
			%>
		</table>
	</body>
</html>
