<%@ page language="java" import="java.util.*" pageEncoding="utf-8"%>
<%@ page import="dto.dtopost"%>
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

		<title>发帖</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

		<style type="text/css">
<!--
#Layer2 {
	position: absolute;
	width: 850px;
	height: 400px;
	z-index: 1;
	left: 147px;
	top: 33px;
}

#Layer3 {
	position: absolute;
	width: 972px;
	height: 115px;
	z-index: 2;
	left: 27px;
	top: 9px;
}

body {
	background-color: #FFCC99;
}

body,td,th {
	color: #000000;
}
-->
</style>
		<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
	</head>

	<body>
		<div id="Layer2">
			<table width="72%" height="351" align="center">
				<tr>
					<td>
						<%
							String name = (String) session.getAttribute("name");
							String idStr = (String) session.getAttribute("g_id");
							dtopost dp = new dtopost();
							int id = Integer.parseInt(idStr);
							dp.setGround_id(id);
						%>
						<a href="mainf.jsp" name="mainf" target="mainf">返回主页</a> 》》》
						<a
							href="fatielist.jsp?name=<%=new String(((String) session.getAttribute("ti_name"))
					.getBytes("ISO-8859-1"), "UTF-8")%>&id=<%=dp.getGround_id()%>">
							<%=new String(((String) session.getAttribute("ti_name"))
					.getBytes("ISO-8859-1"), "UTF-8")%></a>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
						<font color="#e71b1b"><strong>欢迎<%=name%> 进入负离子论坛！</strong>
						</font>
						<%
							if (name == null) {
						%>
						<script type="text/javascript">
												alert('请登陆后发帖！！')
												window.window.location.href='fatielist.jsp?name=<%=new String(((String) session.getAttribute("ti_name"))
						.getBytes("ISO-8859-1"), "UTF-8")%>&id=<%=dp.getGround_id()%>';	
	    									</script>
						<%
							}
						%>
						<form id="form2" name="form2" method="post"
							action="fatieinsert.jsp">
							<table width="100%" bgcolor="#FFFFCC">
								<tr>
									<td width="13%">
										主题：
									</td>
									<td width="87%">
										<input name="title" type="text" size="55" maxlength="55" />
									</td>
								</tr>
								<tr height="40"></tr>
								<tr>
									<td width="13%" valign="top">
										内容：
									</td>
									<td>
										<textarea name="context" id="context" cols="80" rows="14">
										
										</textarea>
									</td>
								</tr>
								<tr>
									<td height="75"></td>
									<td>
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<input type="submit" name="Submit2" value="提交" />
										&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
										<input type="submit" name="Submit" value="取消">
										<br>
									</td>
									<td>
									</td>
								</tr>
							</table>
						</form>
					</td>
				</tr>
			</table>
		</div>
	</body>
</html>
