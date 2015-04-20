<%@ page contentType="text/html; charset=gb2312" language="java"
	import="java.util.*" errorPage=""%>

<%@ page import="dto.dtopost"%>
<%@ page import="dao.fatielistone"%>
<%@ page import="dto.dtofatielistone"%>
<%@ page import="dao.displayreply"%>
<%@ page import="dto.dtoreply"%>
<%@ page import="java.text.*"%>
<%@ page import="dao.reply"%>
<%@ page import="dao.login"%>
<%@ page import="dto.dtouser"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>回帖成功</title>
	</head>

	<body>
		<%
		login lg = new login();
		dtouser ds = new dtouser();
		ds.setUser_name((String) session.getAttribute("name"));
		ds.setPass((String) session.getAttribute("password"));
		List<dtouser> li = lg.selectht(ds);
		dtoreply dr = new dtoreply();
		for (dtouser f : li) {
			dr.setUser_id(f.getUser_id());
		}
		String s = new String(request.getParameter("context").getBytes("ISO-8859-1"),"UTF-8");
		dr.setReply_sign(s);
		String poString = (String)session.getAttribute("post_id");
		
			if((String) session.getAttribute("name") == null || s ==""){
			int post_id = Integer.parseInt(poString);
			%>
			<script type="text/javascript">
			alert('回帖失败，未登陆或回帖为空！！')
		window.window.location.href='fatielistone.jsp?id=<%=post_id %>';	
	    </script>
			<%
		}else{
		int post_id = Integer.parseInt(poString);
		dr.setPost_id(post_id);
		String datetime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")
				.format(Calendar.getInstance().getTime());
		dr.setReplytime(datetime);
		reply r = new reply();
			r.insertreply(dr);
			%>
			<script type="text/javascript">
				alert('回帖成功！！')
				window.window.location.href='fatielistone.jsp?id=<%=post_id %>';	
	   	 	</script>
	    <%
			}
		%>
	</body>
</html>
