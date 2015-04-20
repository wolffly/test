<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="java.text.*"%>
<%@ page import="dto.dtopost"%>
<%@ page import="dto.dtouser"%>
<%@ page import="dao.login"%>
<%@page import="dao.postinsert"%>
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

		<title>My JSP 'fatieinsert.jsp' starting page</title>

		<meta http-equiv="pragma" content="no-cache">
		<meta http-equiv="cache-control" content="no-cache">
		<meta http-equiv="expires" content="0">
		<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
		<meta http-equiv="description" content="This is my page">
		<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

	</head>

	<%
		String gg_id = (String) session.getAttribute("g_id");
		int g_id = Integer.parseInt(gg_id);
		dtopost dt = new dtopost();
		dtouser ds = new dtouser();
		login lg = new login();
		ds.setUser_name((String) session.getAttribute("name"));
		ds.setPass((String) session.getAttribute("password"));
		List<dtouser> li = lg.selectht(ds);
		for (dtouser f : li) {
		dt.setUser_id(f.getUser_id());
		}
		dt.setGround_id(g_id);
		String t = new String(request.getParameter("title").getBytes("ISO-8859-1"),"UTF-8");
		dt.setTitle(t);
		String s = new String(request.getParameter("context").getBytes("ISO-8859-1"),"UTF-8");
		dt.setPost_sign(s);
		dt.setPosttime(new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")
				.format(Calendar.getInstance().getTime()));
				%>
				<%
					if(t.equals("") || s.equals("")){
				%>
					<script type="text/javascript">
						alert('发帖失败，主题或内容为空！！')
						window.window.location.href = 'fatielist.jsp?name=<%=new String(((String)session.getAttribute("ti_name")).getBytes("ISO-8859-1"),"UTF-8")%>&id=<%=dt.getGround_id()%>';
					</script>
			<%
					}
				postinsert pt = new postinsert();
				pt.insertp(dt);
			%>

	<body>
		<script type="text/javascript">
			alert('发帖成功！！')
			window.window.location.href = 'fatielist.jsp?name=<%=new String(((String)session.getAttribute("ti_name")).getBytes("ISO-8859-1"),"UTF-8")%>&id=<%=dt.getGround_id()%>';
		</script>
	</body>
</html>
