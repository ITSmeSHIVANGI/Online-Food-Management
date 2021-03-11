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
<style>

a{

  color: black;
  text-decoration: none;
  font-size: 18px;
  padding-left: 10px;
  padding-right: 10px;
  padding-top: 5px;
  padding-bottom: 5px;
  font-weight: 500;
  width: 100%;
  border-left: 3px solid transparent;
  background:#FFDF00;
  border:black;
}
tr:hover
{
	
	transform:scale(1.01);
	box-shadow:2px 2px 12px rgba(0,0,0,0.2),-1px -1px 8px rgba(0,0,0,0.2);
	
}

</style>
<body style="background-color:#FFEFD5;">
<br>
<br>
<a href="ImageInsert.jsp" >AddRecord</a>
<br><br>
<span><a href="AdminFirst.jsp">BACK</a></span><br><br>
<% 
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_food_management","root","root");
	Statement st =con.createStatement();
    String sql="Select* from dishes";
	ResultSet rs = st.executeQuery(sql);
	while(rs.next()){
		Integer id=rs.getInt("d_id");
	String filename = rs.getString("filename");
	String d_name = rs.getString("d_name");
	int d_price = Integer.parseInt(rs.getString("d_price"));
	String ingredients=rs.getString("ingredients");
%>

<table style="width:100%;" border='5'>
<th>Number</th>
<th>Image</th>
<tr>
<td><%=id %></td>
<td><td><img src="images/<%=filename %>" width="200" height="200"/></td>
<td><%=d_name %></td>
<td><%=ingredients %></td>
<td><%=d_price %></td>

<td><a href="UpdateMenu.jsp?d_id=<%=id%>&d_name=<%=d_name%>">UpdateRecord</a></td>
<td><a href="RemoveMenu.jsp?d_id=<%=id%>">RemoveRecord</a></td>
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
</body>
</html>