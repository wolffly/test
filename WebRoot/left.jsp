<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="dao.LiftTitle"%>
<%@ page import="dto.dtoground"%>
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

		<title>My JSP 'left.jsp' starting page</title>

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
	top: 10px;
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
		<div id="Layer1">
			<ul class='sitemu STYLE1'>
				<p>
					帖子分类 ：
				</p>
				<%
					LiftTitle lt = new LiftTitle();
					List<dtoground> l = lt.ltitle();
					int ground_id = 0;
					for (dtoground dto : l) {
				%>
				<p>
					<a
						href="fatielist.jsp?name=<%=dto.getGround_name()%>&id=<%=dto.getGround_id()%>"
						target="mainf"><%=dto.getGround_name()%> </a>
				</p>
				<%
					}
				%>
				<p>
					<a href="author.html" target="mainf">作者简介</a>
				</p>
			</ul>

		</div>
	</body>
</html>
