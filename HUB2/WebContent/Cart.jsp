<%@page import="model.*"%>
<%@page import="dao.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*" %>
    <%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://unpkg.com/flickity@2/dist/flickity.min.css">
<link rel="stylesheet" href="Cart.css">
<script src="https://unpkg.com/flickity@2/dist/flickity.pkgd.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/css/jquery.min.css"></script>
<script src="Drop.js"></script>
<script src="ext.js"></script>
</head>
<style media="screen">
.carousel-cell {
width:30%;
height:50vh;
}

.carousel-cell img{
object-fit:cover;
width:80%;
height:50vh;
border-radius:20px;
position:relative;
}
.container {
  position: relative;
  width: 50%;
}

.image {
  display: block;
  width: 70%;
  height: auto;
}
</style>
<body>
<header>
<ul>
<li><a href="MenuAll.jsp"><i class="fa fa-home" aria-hidden="true"></i></a></li>
<li><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a><input type="text" placeholder="search here...." style="position:relative;top:40px;right:16vh;border-radius:20px;height:30px;width:40vh;text-align:center;"></li>
<li>
<div class="dropdown">
  <button onclick="myFunction()" class="dropbtn" style="color:white">Profile</button>
  <div id="myDropdown" class="dropdown-content">
    <a href="Order1.jsp?<%=session.getAttribute("email")%>">My Orders</a>
    <a href="visitProfile.jsp">Visit Profile</a>
    <a href="update.jsp?firstName=<%=session.getAttribute("firstName")%>&lastName=<%=session.getAttribute("lastName")%>&email=<%=session.getAttribute("email")%>&mobile=<%=session.getAttribute("mobile")%>&address=<%=session.getAttribute("address")%>&city=<%=session.getAttribute("city")%>&state=<%=session.getAttribute("state")%>&pincode=<%=session.getAttribute("pincode")%>&password=<%=session.getAttribute("password")%>">Edit Profile</a>
	<a href="changepassword.jsp?email=<%=session.getAttribute("email")%>">Change Password</a>
	<a href="logout.jsp">Logout</a>
  </div>
</div>
</li>
<li><a href="OfferDay.jsp">Offer the Day</a></li>
</ul>
</header>
<h1 style="padding:30px;text-align:center;font-style:italic;">YOUR CART &nbsp<i class="fa fa-cart-arrow-down" aria-hidden="true" style="color:orange; font-size:50px;"></i></h1>
<% 
int id=Integer.parseInt(request.getParameter("d_id"));
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_food_management","root","root");
	Statement st =con.createStatement();
    String sql="Select filename,ingredients,d_name,d_price from dishes where d_id=" +id;
	ResultSet rs = st.executeQuery(sql);
	while(rs.next()){
		String ingredients = rs.getString("ingredients");
		String d_name= rs.getString("d_name");
		int d_price = Integer.parseInt(rs.getString("d_price"));
	String filename = rs.getString("filename");
%>
<table border=1 cellspacing="0" width="100%" style="background:orange;">
<tr>
<td><img src="images/<%=filename%>" style="width:50vh;">
<input type="number" placeholder="Quantity" name="qOrderd" id="a" style="position:relative;bottom:15vh;padding:10px;" required>
</td>
<td><center><h1><%=d_name %></h1>
<text>Ingredients:<%=ingredients %></text></br>
<text>Price:</text>
<h1 id="answer"></h1>
<a href="Order.jsp?DishId=<%= id %>&Email=<%=session.getAttribute("email")%>&Price=<%=d_price%>" style="text-decoration:none;background:black;color:yellow;padding:10px;position: relative;
    top: 20px;" onclick="show()">Proceed To Pay</a></br><br></center>
<%-- <center><a href="Payment.jsp" style="text-decoration:none;background:black;color:yellow;padding:10px;">Proceed To Pay</a></center> --%>
</td>
</tr>
</table>
<script>
function show()
{
var price;
price=<%=d_price%>;
var field1=document.getElementById("a").value;
var result=parseFloat(field1)* price;
if(!isNaN(result)){
document.getElementById("answer").innerHTML="The Price is "+result;
}
}
</script>
<% 
}
}
catch(Exception e)
{
	out.println(e);
	}
%>
<h1 style="text-align:center;padding-top:20px;position:relative;top:30px;font-size:45px;letter-spacing:1px;font-weight:500;" id="Pizza">YOU CAN ALSO TRY THESE.... <i class="fa fa-pie-chart" aria-hidden="true" style="color:orange;font-size:50px;"></i></h1>
<div class="slider">
<div class="carousel" data-flickity='{"wrapAround":true,"autoPlay":true }'>
<div class="carousel-cell">
<img src="images/mozerela pizza.gif" class="image">
</div>
<div class="carousel-cell">
<img src="images/gazab.jpg" class="image">
</div>
<div class="carousel-cell">
<img src="images/fruit pasta salad.jpg" class="image">
</div>
<div class="carousel-cell">
<img src="images/dmplings.png" class="image">
</div>
<div class="carousel-cell">
<img src="images/desert1.jpg" class="image">
</div>
</div>
</div>
<footer>hjgfjhfjhfgf</footer>
</body>
</html>