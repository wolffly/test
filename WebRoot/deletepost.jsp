<%@ page language="java" import="java.util.*" pageEncoding="ISO-8859-1"%>
<%@page import="com.sun.java.swing.plaf.windows.resources.windows"%>
<%
String path = request.getContextPath();
String basePath = request.getScheme()+"://"+request.getServerName()+":"+request.getServerPort()+path+"/";
%>
<%@page import="dao.*" %>
<!DOCTYPE HTML PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN">
<html>
  <head>
    <base href="<%=basePath%>">
    
    <title>My JSP 'deletepost.jsp' starting page</title>
    
	<meta http-equiv="pragma" content="no-cache">
	<meta http-equiv="cache-control" content="no-cache">
	<meta http-equiv="expires" content="0">    
	<meta http-equiv="keywords" content="keyword1,keyword2,keyword3">
	<meta http-equiv="description" content="This is my page">
	<!--
	<link rel="stylesheet" type="text/css" href="styles.css">
	-->

  </head>
  
  <body>
     
     <script type="text/javascript">
     	alert("");
     </script>
<%
		
         int post_id=Integer.parseInt(request.getParameter("post_id"));
    	 Post p = new Post();
		 p.DeletePost(post_id);
		 reply r = new reply();
		 r.DeleteReply(post_id);
		 response.sendRedirect("adminfatielist.jsp");	
     %>
  </body>
</html>
