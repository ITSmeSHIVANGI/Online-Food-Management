<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@page import="java.sql.*" %>
<%@page import="imageInn.*" %>
<%Integer d_id=Integer.parseInt(request.getParameter("d_id"));%>
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
<input type="submit" value="submit">
</form>
</body>
</html>
<%
if(request.getMethod().equals("POST"))
{
	Integer no1=Integer.parseInt(request.getParameter("d_id1"));

	User user=new User();
	user.setD_id(no1);
		Dao dao=new Dao();
		Integer i=dao.delete(user);
		
	out.println(i+"record deleted");
	out.println("<a href='MenuAll.jsp'>Home</a>");
	out.println("<a href='ViewAll2.jsp'>Back</a>");
}
%>