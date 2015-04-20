<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="dto.dtopost"%>
<%@ page import="dao.fatielistone"%>
<%@ page import="dto.dtofatielistone"%>
<%@ page import="dao.displayreply"%>
<%@ page import="dto.dtoreply"%>

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

		<title>看帖</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">

		<link rel="stylesheet" href="post/css/main.css" type="text/css" />
		<style type="text/Css">
<!--
p {
	text-indent: 2em;
	font-size: 17px;
	color: black;
	font-family: Monaco;
}
-->
</style>

	</head>
	<%
		/**
			版主发的帖子
		 */
		String post_id = request.getParameter("id");
		int id = Integer.parseInt(post_id);
		session.setAttribute("post_id", request.getParameter("id"));
		String gg_id = (String) session.getAttribute("g_id");
		int g_id = Integer.parseInt(gg_id);
		dtopost dt = new dtopost();
		dt.setGround_id(g_id);
		dtofatielistone dp = new dtofatielistone();
		fatielistone fl = new fatielistone();
		dp.setPost_id(Integer.parseInt(request.getParameter("id")));
		List<dtofatielistone> list = fl.selsectpost(dp);
		for (dtofatielistone d : list) {
	%>

	<body>
		<table>
			<tr id="tr2">
				<td>
					<%
						String name = new String(((String) session
									.getAttribute("ti_name")).getBytes("ISO-8859-1"),
									"UTF-8");
					%>
					您好<%=session.getAttribute("name")%>,欢迎登录负离子论坛！
					<a href="zhuce.html" target="mainf">[注册]</a>
					<a href="login.html" target="mainf">[登录]</a>
					<a href="mainf.jsp" name="mainf" target="mainf">返回主页</a> 》》》
					<a
						href="fatielist.jsp?name=<%=new String(((String) session.getAttribute("ti_name"))
						.getBytes("ISO-8859-1"), "UTF-8")%>&id=<%=dt.getGround_id()%>">
						<%=name%></a>
				</td>
		</table>
		<center>
			<table>
				<tr>
					<td style="font-size: 30; color: red; font-family: Monaco;">
						帖子:&nbsp;&nbsp;<%=d.getTitle()%>
					</td>
				</tr>
			</table>
		</center>
		<table cellpadding="10" cellspacing="10" border="1" width="90%"
			align="center" bordercolor="#000000">
			<tr>
				<td width="20%" bgcolor="#f1daa9">
					<table>
						<tr>
							<td>
								用户名:&nbsp;&nbsp;<%=d.getUser_name()%>
							</td>
						</tr>
						<tr>
							<td>
								用户ID:&nbsp;&nbsp;<%=d.getUser_id()%>
							</td>
						</tr>
						<tr>
							<td>
								发帖时间:
							</td>
						</tr>
						<tr>
							<td>
								<%=d.getPosttime()%>
							</td>
						</tr>
					</table>
				</td>
				<td bgcolor="#fdf4e3" valign="top">
					<p><%=d.getPost_sign()%></p>
				</td>
			</tr>
			<%
				}
			%>

			<%
				displayreply dy = new displayreply();
				List<dtoreply> lit = dy.disreply(dp);
				for (dtoreply dl : lit) {
			%>

			<tr>
				<td width="20%" bgcolor="#f1daa9">
					<table>
						<tr>
							<td>
								用户名:&nbsp;&nbsp;<%=dl.getUser_name()%>
							</td>
						</tr>
						<tr>
							<td>
								用户ID:&nbsp;&nbsp;<%=dl.getUser_id()%>
							</td>
						</tr>
						<tr>
							<td>
								回帖时间:
							</td>
						</tr>
						<tr>
							<td>
								<%=dl.getReplytime()%>
							</td>
						</tr>
					</table>
				</td>
				<td bgcolor="#fdf4e3" valign="top">
					<p><%=dl.getReply_sign()%></p>
				</td>
			</tr>
			<%
				}
			%>
		</table>
		<br>
		<br>

		<form action="zhutieAhuifu.jsp">
			<table width="90%" align="center">
				<tr height="50"></tr>
				<tr>
					<td>
						<textarea rows="10" cols="80" name="context"
							style="background-color: rgb(251, 245, 236); text-indent: 2em; font-size: 17px; color: green; font-family: Monaco;">
						</textarea>
						<br />
						<br />
						<br />
						<input type="submit" value="发表" />
						&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<input type="reset" name="Submit" value="重置">
					</td>
				</tr>
			</table>
		</form>
	</body>
</html>
