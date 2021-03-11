<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*" %>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta  http-equiv="Content-Type" content="text/html" charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<% 
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_food_management","root","root");
	int imageid=Integer.parseInt(request.getParameter("id"));
	Statement st =con.createStatement();
    String sql="Select filename from dishes where d_id=" + imageid +"";
	ResultSet rs = st.executeQuery(sql);
	while(rs.next()){
	String filename = rs.getString("filename");
%>
<table style="width:100%;">
<tr>
<th>Number</th>
<th>Image</th>
</tr>
<tr>
<td><%=imageid%></td><td>
<td><td><img src="images/<%=filename %>" width="200" height="200"/></td>
<td><img src="images/veg/<%=filename %>" width="200" height="200"/></td>
<td><img src="images/non veg/<%=filename %>" width="200" height="200"/></td>
</tr>
</table>
<% 
}
}
catch(Exception e)
{
	out.println(e);
	}
%>
<a href="MenuAll.jsp">Home</a>
</body>
</html>