<%@page import="java.util.*" %>
    <%@page import="java.sql.*" %>
<%
try{
Integer DishId=Integer.parseInt(request.getParameter("DishId"));

Class.forName("com.mysql.jdbc.Driver");
Connection con1=DriverManager.getConnection("jdbc:mysql://localhost:3306/online_food_management","root","root");
String sql1="delete from orders where DishId=?";

PreparedStatement pst=con1.prepareStatement(sql1);
pst.setInt(1,DishId);
Integer i=pst.executeUpdate();
out.println(i+"deleted record");
out.println("<a href='index.jsp'>Home</a>");
if(i>0)
	response.sendRedirect("Order1.jsp");
}
catch(Exception e){
	out.println(e);
}
%>
