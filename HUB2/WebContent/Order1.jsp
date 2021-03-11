<%@page import="java.util.*" %>
    <%@page import="java.sql.*" %>
    <%@page import="dao.CustomerDetailsDao"%>
<%@page import="model.CustomerDetails" %>
    
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<style>
body{
background-color:#DAD3CC;
}
</style>
</head>
<body>
<h1 style="color:orange;margin-top:40px;text-align:center;font-size:40px;text-transform:uppercase;">Your Orders</h1>
<% 
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_food_management","root","root");
	Statement st =con.createStatement();
    String sql="Select d.filename,o.DishId,d.d_name,d.ingredients,d.d_price,o.email from dishes d,orders o where o.DishId=d.d_id";
	//String sql="select distinct d.filename , d.d_name,d.ingredients,d_price, o.Email  from dishes d inner join orders o on d.d_id = o.DishId inner join customerdetails c on o.Email =?";
    ResultSet rs = st.executeQuery(sql);
   	while(rs.next()){
   	int DishId=rs.getInt("DishId");
   	String filename = rs.getString("filename");
   	String d_name = rs.getString("d_name");
   	int d_price = Integer.parseInt(rs.getString("d_price"));
   	String ingredients=rs.getString("ingredients");
   	String email=rs.getString("email");
   %>
   <table style="width:100%;">
   <tr>
   <td><td><img src="images/<%=filename %>" width="250" height="250"/></td>
   <td><%=d_name %></td>
   <td><%=ingredients %></td>
   <td><i class="fa fa-inr" aria-hidden="true"></i><%=d_price %></td>
   <td><%=email %></td>
   <td><a href="DeleteItem.jsp?DishId=<%=DishId%>">Remove Item</a></td>
   </tr>
   <text>-------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------------</text>
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