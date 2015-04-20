<%@ page contentType="text/html; charset=gb2312" language="java"
	import="java.sql.*" errorPage=""%>
<%@page import="dao.zhuce"%>
<%@ page import="java.util.*"%>
<%@ page import="java.text.*"%>
<%@ page import="dto.dtouser"%>
<%@ page import="dao.login"%>
<%@page import="dao.zhuceusercheck"%>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
	<head>
		<meta http-equiv="Content-Type" content="text/html; charset=gb2312" />
		<title>注册</title>
	</head>

	<body>
		<center>
			<%
				dtouser ds = new dtouser();
				login lg = new login();
				zhuce zc = new zhuce();
				zhuceusercheck zsc = new zhuceusercheck();
				String user_name = new String(request.getParameter("user_name").getBytes("ISO-8859-1"),"UTF-8");
				
				ds.setUser_name(user_name);
				ds.setPass((String) request.getParameter("pass"));
				ds.setQpass((String) request.getParameter("qpass"));
				ds.setE_mail((String) request.getParameter("e_mail"));
				String datetime = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss")
						.format(Calendar.getInstance().getTime());
				ds.setDesigntime(datetime);
				if (request.getParameter("pass").equals(  //判断两次密码时都相等
						request.getParameter("qpass"))
						&& request.getParameter("user_name") != null) {
						if (!zsc.selectuser(ds)) {
							zc.insert(ds);
						 		session.setAttribute("password",(String)request.getParameter("pass"));
							 	session.setAttribute("name",user_name);
							 	response.sendRedirect("userfirst.jsp");
						} else {
						%>
				<script type="text/javascript">
					alert('用户名重复！！请重新输入！！')
					window.window.location.href = 'zhuce.html';
				</script>

				<% 
						}
					} else {
				%>
				<script type="text/javascript">
					alert('两次密码不一致！！请重新输入！！')
					window.window.location.href = 'zhuce.html';
				</script>
				<%
					}
				%>
				<script type="text/javascript">
					alert('注册成功！')
					window.window.location.href = 'userfirst.jsp';
				</script>
		</center>
	</body>
</html>
