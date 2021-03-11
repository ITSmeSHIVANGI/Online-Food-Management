<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@page import="java.util.*" %>
<%@page import="java.io.*" %>
<%@page import="imageInn.*" %>
<% Integer d_id=Integer.parseInt(request.getParameter("d_id"));
	String name=request.getParameter("d_name");
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<a href='ViewAll2.jsp' style="color:black;background:yellow;padding:10px;">Back</a>
<form method="post" style="text-align:center;">
Number:<input type="text" name="d_id1" readonly value="<%=d_id%>"><br><br>
Name:<input type="text" name="d_name1" value="<%=name%>"><br><br>
<input type="submit" value="submit">
</form>
</body>
</html>

<%
if(request.getMethod().equals("POST"))
{
	Integer no1=Integer.parseInt(request.getParameter("d_id1"));
	String name1=request.getParameter("d_name1");

	User user=new User();
	user.setD_id(no1);
	user.setD_name(name1);
		Dao dao=new Dao();
		Integer i=dao.update(user);
		
	out.println(i+"record updated");
	out.println("<a href='MenuAll.jsp'>Home</a>");
	out.println("<a href='ViewAll2.jsp'>Back</a>");
	}
%>