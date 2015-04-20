<%@ page language="java" import="java.util.*" pageEncoding="GBK"%>
<%@page import="dao.*" %>
<%@page import="dto.*" %>
<%@page import="com.sun.java.swing.plaf.windows.resources.windows"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>

<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'admindelete.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">

  </head>
 
     
     <%
         int id=Integer.parseInt(request.getParameter("id"));

		 User u = new User();
		 u.delete(id);  	
		 response.sendRedirect("adminuser.jsp");	
     %>
    <%=request.getParameter("post_id")%>
    
    
  
  <body>
  </body>
</html>
