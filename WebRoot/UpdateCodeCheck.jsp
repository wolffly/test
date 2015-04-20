<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@page import="dto.*"%>
<%@page import="dao.*"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="dto.*" %>
<%@page import="dao.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'UpdateCode.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  <form action="" method="post">
  	<table align="center">
  		
		  		
  	</table>
  	</form>
		<% 
		   String name=request.getParameter("user_name");
  		   String pass=request.getParameter("pass") ;
  		   String newpass=request.getParameter("newpass") ;
  		   String qnewpass=request.getParameter("qnewpass") ;
		
				dtouser du = new dtouser();
				User u = new User();
				
				du.setUser_name(name);
				du.setPass(pass);
				du.setNewpass(newpass);
				du.setQnewpass(qnewpass);
				if (newpass.equals(qnewpass)&& name != null){
					if( du.getUser_name() == name &&du.getPass()==pass ){
							u.Update(name,newpass);
					}else{
					%>
					<script type="text/javascript">
						alert("原始密码错误！！")
						window.window.location.href="UpdateCode.jsp";
					</script>
					<%
						}
						
					}	else{
					 %>
					<script type="text/javascript">
						alert("两次密码输入不一致！！")
						window.window.location.href="UpdateCode.jsp";
					</script>
					<%
					}
				%>
					<script type="text/javascript">
						alert("修改成功！！")
						window.window.location.href="login.html";
					</script>

  <body><br>
  </body>
</html>
