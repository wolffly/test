<%@ page language="java" import="java.util.*" pageEncoding="UTF-8"%>
<%@ page import="dao.zhuce"%>
<%@ page import="dto.dtouser"%>
<%@ page import="dao.login"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>登陆</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
  </head>
  <% 
  	 dtouser ds = new dtouser();
  	 login lg = new login();
  	 String  user_name = new String(request.getParameter("user_name").getBytes("ISO-8859-1"),"UTF-8");
	 ds.setUser_name(user_name); 
	 ds.setPass((String)request.getParameter("password"));
	 if(lg.select(ds)){
		 	session.setAttribute("name",user_name);
		 	session.setAttribute("password",(String)request.getParameter("password"));
		 	List<dtouser> list = lg.selectht(ds);
		 	for(dtouser d : list){
			 	if(d.getRo_id() == 1){
			 		response.sendRedirect("adminfirst.jsp ");
			 	}else{
			 		response.sendRedirect("userfirst.jsp");
			 	}
		 	}
	 }else{
	%>
	 	<script type="text/javascript">
			alert('密码或账号不正确！！！请重新登陆！！')
		window.window.location.href='login.html';	
	    </script>
 <%
	 }
  %>
  <body>
 
  </body>
</html>
