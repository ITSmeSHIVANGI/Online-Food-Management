<%@page import="java.util.*" %>
<%@page import="java.sql.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<link rel="stylesheet" href="https://unpkg.com/flickity@2/dist/flickity.min.css">
<link rel="stylesheet" href="Style2.css">
<script src="https://unpkg.com/flickity@2/dist/flickity.pkgd.min.js"></script>
<script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/3.4.1/css/jquery.min.css"></script>
<script src="Drop.js"></script>
<script src="ext.js"></script>
</head>
<style media="screen">
.carousel-cell {
width:40%;
height:60vh;
}

.carousel-cell img{
object-fit:cover;
width:90%;
height:60vh;
border-radius:20px;
position:relative;
}
.container {
  position: relative;
  width: 50%;
}

.image {
  display: block;
  width: 90%;
  height: auto;
}

.overlay {
  position: absolute;
  bottom: 0;
  left: 0;
  right: 0;
  background-color:orange;
  overflow: hidden;
  width: 90%;
  height: 0;
  transition: .5s ease;
}

.carousel-cell:hover .overlay {
  height: 70%;
}

.text {
  white-space: nowrap; 
  color: white;
  font-size: 20px;
  position: absolute;
  overflow: hidden;
  top: 50%;
  left: 50%;
  transform: translate(-50%, -50%);
  -ms-transform: translate(-50%, -50%);
}
<%--header.sticky{
	background:#333;
	height:4rem;
	padding:20px 100px;
	box-shadow:2rem 0 .5rem #000;
}
header.sticky ul li a{
	color:#FFF200;
	margin-bottom:30px;
}--%>
</style>
<body>
<header id="header">
<%
   String firstName=(String)session.getAttribute("firstName");
   if(firstName!=null)
   {
%>
   <h3 style="color:orange; font-size:30px;letter-spacing:2;position:relative;top:40px;font-style:italic;font-weight:300">Welcome ::
	      <%=session.getAttribute("firstName") %>!</h3>
<ul>

<li><a href="index.jsp"><i class="fa fa-home" aria-hidden="true"></i></a></li>
<li><a href="#"><i class="fa fa-search" aria-hidden="true"></i></a><input type="text" placeholder="search here...." style="position:relative;right:16vh;border-radius:20px;height:30px;width:40vh;text-align:center;"></li>
<li><a href="#mw">Menu</a></li>
<li>
<div class="dropdown">
  <button onclick="myFunction()" class="dropbtn" style="color:orange;position: relative;
    bottom: 40px;">Profile</button>
  <div id="myDropdown" class="dropdown-content">
    <a href="Order1.jsp?<%=session.getAttribute("email")%>">My Orders</a>
    <a href="visitProfile.jsp">Visit Profile</a>
    <a href="update.jsp?firstName=<%=session.getAttribute("firstName")%>&lastName=<%=session.getAttribute("lastName")%>&email=<%=session.getAttribute("email")%>&mobile=<%=session.getAttribute("mobile")%>&address=<%=session.getAttribute("address")%>&city=<%=session.getAttribute("city")%>&state=<%=session.getAttribute("state")%>&pincode=<%=session.getAttribute("pincode")%>&password=<%=session.getAttribute("password")%>">Update Profile</a>
	<a href="changepassword.jsp?email=<%=session.getAttribute("email")%>">Change Password</a>
	<a href="logout.jsp">Logout</a>
  </div>
</div>
</li>
<li><a href="OfferDay.jsp">Offer Of the Day</a></li>
</ul>
</header>
<div class="menu_all">
<h1>WELCOME TO OUR MENU</h1>
<p>TASTE YOUR WANTED DELICACIES</p>
<center><i class="fa fa-cutlery">......</i>
<i class="fa fa-pie-chart" aria-hidden="true"></i></center>
</div>
<div class="menu_all2">
<h1 id="mw">WHAT'S POPULAR</h1><br>
<p>Client's Most Popular Choise</p>
<ul>
<li><a href="#">ALL</a></li>
<li><a href="#Pizza">PIZZA</a></li>
<li><a href="#Pasta">PASTA</a></li>
<li><a href="#Veg">VEGETARIAN</a></li>
<li><a href="#Non-veg">NON-VEGETARIAN</a></li>
<li><a href="#Salad">SALADS</a></li>
<li><a href="#Chinese">CHINESE</a></li>
<li><a href="#Desert">DESERTS</a></li>
</ul>
<div class="m1">
<img src="images/Hyderabadi-Biryani.jpg">
<a href="#"><text style="background:orange;position:relative;left:34px;top:22px;padding:2px;font-size:13px;letter-spacing:1px;border-radius:10px; font-style:fantasy;"><b>BIRYANI, NON-VEGETARIAN</b></text>
</a>
<br>
<br><text style="letter-spacing:1px;font-size:22px;position:relative;left:40px;top:13px;">Hyderabadi-Biryani</text>
<br>
<span class="fa fa-star checked" style="position:relative;left:82px;top:15px;"></span>
<span class="fa fa-star checked" style="position:relative;left:82px;top:15px;"></span>
<span class="fa fa-star checked" style="position:relative;left:82px;top:15px;"></span>
<span class="fa fa-star" style="position:relative;left:82px;top:15px;"></span>
<span class="fa fa-star" style="position:relative;left:82px;top:15px;"></span><br><br>
<text style="position:relative;top:10px;left:30px;font-weight:900">With Basmati Rice, Garlic, Mint</text>
<text style="position:relative;top:20px;left:110px;font-size:25px;"><br><b>Rs 199</b></text><br><br>
<a href="#" style="position:relative;left:105px;top:20px;background:#F1C40F;padding:10px;border-radius:15px;"><b>ORDER</b></a>
</div>
<div class="m1">
<img src="images/desert1.jpg">
<a href="#"><text style="background:orange;position:relative;left:45px;top:22px;padding:2px;font-size:13px;letter-spacing:1px;border-radius:10px; font-style:fantasy;"><b>ICECREAM, VEGETARIAN</b></text>
</a>
<br>
<br><text style="letter-spacing:1px;font-size:22px;position:relative;left:56px;top:13px;">Vanilla-Icecream</text>
<br>
<span class="fa fa-star checked" style="position:relative;left:82px;top:15px;"></span>
<span class="fa fa-star checked" style="position:relative;left:82px;top:15px;"></span>
<span class="fa fa-star checked" style="position:relative;left:82px;top:15px;"></span>
<span class="fa fa-star" style="position:relative;left:82px;top:15px;"></span>
<span class="fa fa-star" style="position:relative;left:82px;top:15px;"></span><br><br>
<text style="position:relative;top:10px;left:15px;font-weight:900">With Some Strawberry And Rasberry</text>
<text style="position:relative;top:20px;left:110px;font-size:25px;"><br><b>Rs 159</b></text><br><br>
<a href="#" style="position:relative;left:105px;top:20px;background:#F1C40F;padding:10px;border-radius:15px;"><b>ORDER</b></a>
</div>
<div class="m1">
<img src="images/paneer.jpg">
<a href="#"><text style="background:orange;position:relative;left:55px;top:22px;padding:2px;font-size:13px;letter-spacing:1px;border-radius:10px; font-style:fantasy;"><b>PANEER, VEGETARIAN</b></text>
</a>
<br>
<br><text style="letter-spacing:1px;font-size:22px;position:relative;left:75px;top:13px;">Kadhai Paneer</text>
<br>
<span class="fa fa-star checked" style="position:relative;left:82px;top:15px;"></span>
<span class="fa fa-star checked" style="position:relative;left:82px;top:15px;"></span>
<span class="fa fa-star checked" style="position:relative;left:82px;top:15px;"></span>
<span class="fa fa-star checked" style="position:relative;left:82px;top:15px;"></span>
<span class="fa fa-star" style="position:relative;left:82px;top:15px;"></span><br><br>
<text style="position:relative;top:10px;left:30px;font-weight:900">With Curry Leaves, Garlic, Onions</text>
<text style="position:relative;top:20px;left:110px;font-size:25px;"><br><b>Rs 260</b></text><br><br>
<a href="#" style="position:relative;left:105px;top:20px;background:#F1C40F;padding:10px;border-radius:15px;"><b>ORDER</b></a>
</div>
<div class="m1">
<img src="images/Beggars-Salad_opt.jpg">
<a href="#"><text style="background:orange;position:relative;left:55px;top:22px;padding:2px;font-size:13px;letter-spacing:1px;border-radius:10px; font-style:fantasy;"><b>SALAD, VEGETARIAN</b></text>
</a>
<br>
<br><text style="letter-spacing:1px;font-size:22px;position:relative;left:80px;top:13px;">Fruit Salad</text>
<br>
<span class="fa fa-star checked" style="position:relative;left:84px;top:15px;"></span>
<span class="fa fa-star checked" style="position:relative;left:84px;top:15px;"></span>
<span class="fa fa-star checked" style="position:relative;left:84px;top:15px;"></span>
<span class="fa fa-star checked" style="position:relative;left:84px;top:15px;"></span>
<span class="fa fa-star checked" style="position:relative;left:84px;top:15px;"></span><br><br>
<text style="position:relative;top:10px;left:30px;font-weight:900">With Strawberries,Spinach,Mint</text>
<text style="position:relative;top:20px;left:110px;font-size:25px;"><br><b>Rs 109</b></text><br><br>
<a href="#" style="position:relative;left:105px;top:20px;background:#F1C40F;padding:10px;border-radius:15px;"><b>ORDER</b></a>
</div>
<div class="m1">
<img src="images/burger.jpg">
<a href="#"><text style="background:orange;position:relative;left:55px;top:22px;padding:2px;font-size:13px;letter-spacing:1px;border-radius:10px; font-style:fantasy;"><b>BURGER, VEGETARIAN</b></text>
</a>
<br>
<br><text style="letter-spacing:1px;font-size:22px;position:relative;left:65px;top:13px;">Cheesy Burger</text>
<br>
<span class="fa fa-star checked" style="position:relative;left:82px;top:15px;"></span>
<span class="fa fa-star checked" style="position:relative;left:82px;top:15px;"></span>
<span class="fa fa-star checked" style="position:relative;left:82px;top:15px;"></span>
<span class="fa fa-star" style="position:relative;left:82px;top:15px;"></span>
<span class="fa fa-star" style="position:relative;left:82px;top:15px;"></span><br><br>
<text style="position:relative;top:10px;left:20px;font-weight:900">With Tomato Slice,Onions,Capsicum</text>
<text style="position:relative;top:20px;left:110px;font-size:25px;"><br><b>Rs 299</b></text><br><br>
<a href="#" style="position:relative;left:100px;top:20px;background:#F1C40F;padding:10px;border-radius:15px;"><b>ORDER</b></a>
</div>
<div class="m1">
<img src="images/chole-bature-570x379.jpg">
<a href="#"><text style="background:orange;position:relative;left:67px;top:22px;padding:2px;font-size:13px;letter-spacing:1px;border-radius:10px; font-style:fantasy;"><b>CHOLA, BHATURA</b></text>
</a>
<br>
<br><text style="letter-spacing:1px;font-size:22px;position:relative;left:65px;top:13px;">Chola-Bhatura</text>
<br>
<span class="fa fa-star checked" style="position:relative;left:82px;top:15px;"></span>
<span class="fa fa-star checked" style="position:relative;left:82px;top:15px;"></span>
<span class="fa fa-star checked" style="position:relative;left:82px;top:15px;"></span>
<span class="fa fa-star" style="position:relative;left:82px;top:15px;"></span>
<span class="fa fa-star" style="position:relative;left:82px;top:15px;"></span><br><br>
<text style="position:relative;top:10px;left:30px;font-weight:900">With Basmati Rice, Garlic, Mint</text>
<text style="position:relative;top:20px;left:110px;font-size:25px;"><br><b>Rs 199</b></text><br><br>
<a href="#" style="position:relative;left:105px;top:20px;background:#F1C40F;padding:10px;border-radius:15px;"><b>ORDER</b></a>
</div>
<div class="m1">
<img src="images/italian.jpg">
<a href="#"><text style="background:orange;position:relative;left:67px;top:22px;padding:2px;font-size:13px;letter-spacing:1px;border-radius:10px; font-style:fantasy;"><b>ITALIAN, SAUSAGE</b></text>
</a>
<br>
<br><text style="letter-spacing:1px;font-size:22px;position:relative;left:80px;top:13px;">Italian-Dish</text>
<br>
<span class="fa fa-star checked" style="position:relative;left:82px;top:15px;"></span>
<span class="fa fa-star checked" style="position:relative;left:82px;top:15px;"></span>
<span class="fa fa-star checked" style="position:relative;left:82px;top:15px;"></span>
<span class="fa fa-star checked" style="position:relative;left:82px;top:15px;"></span>
<span class="fa fa-star" style="position:relative;left:82px;top:15px;"></span><br><br>
<text style="position:relative;top:10px;left:30px;font-weight:900">With Mushrooms, Italian Sausage</text>
<text style="position:relative;top:20px;left:110px;font-size:25px;"><br><b>Rs 199</b></text><br><br>
<a href="#" style="position:relative;left:105px;top:20px;background:#F1C40F;padding:10px;border-radius:15px;"><b>ORDER</b></a>
</div>
<div class="m1">
<img src="images/noodles.jpg">
<a href="#"><text style="background:orange;position:relative;left:55px;top:22px;padding:2px;font-size:13px;letter-spacing:1px;border-radius:10px; font-style:fantasy;"><b>NOODLES, VEGETARIAN</b></text>
</a>
<br>
<br><text style="letter-spacing:1px;font-size:22px;position:relative;left:60px;top:13px;">Chinese Noodles</text>
<br>
<span class="fa fa-star checked" style="position:relative;left:82px;top:15px;"></span>
<span class="fa fa-star checked" style="position:relative;left:82px;top:15px;"></span>
<span class="fa fa-star checked" style="position:relative;left:82px;top:15px;"></span>
<span class="fa fa-star" style="position:relative;left:82px;top:15px;"></span>
<span class="fa fa-star" style="position:relative;left:82px;top:15px;"></span><br><br>
<text style="position:relative;top:10px;left:30px;font-weight:900">With Carrot Slices,Onion,Peas</text>
<text style="position:relative;top:20px;left:110px;font-size:25px;"><br><b>Rs 279</b></text><br><br>
<a href="#" style="position:relative;left:105px;top:20px;background:#F1C40F;padding:10px;border-radius:15px;"><b>ORDER</b></a>
</div>
<div class="m1">
<img src="images/pasta.jpg">
<a href="#"><text style="background:orange;position:relative;left:55px;top:22px;padding:2px;font-size:13px;letter-spacing:1px;border-radius:10px; font-style:fantasy;"><b>PASTA, VEGETARIAN</b></text>
</a>
<br>
<br><text style="letter-spacing:1px;font-size:22px;position:relative;left:40px;top:13px;">Creamy Indo-Pasta</text>
<br>
<span class="fa fa-star checked" style="position:relative;left:82px;top:15px;"></span>
<span class="fa fa-star checked" style="position:relative;left:82px;top:15px;"></span>
<span class="fa fa-star checked" style="position:relative;left:82px;top:15px;"></span>
<span class="fa fa-star checked" style="position:relative;left:82px;top:15px;"></span>
<span class="fa fa-star" style="position:relative;left:82px;top:15px;"></span><br><br>
<text style="position:relative;top:10px;left:30px;font-weight:900">With Curry Leaves, Garlic, Mint</text>
<text style="position:relative;top:20px;left:110px;font-size:25px;"><br><b>Rs 399</b></text><br><br>
<a href="#" style="position:relative;left:100px;top:20px;background:#F1C40F;padding:10px;border-radius:15px;"><b>ORDER</b></a>
</div>
<div class="m1">
<img src="images/pizza.jpg">
<a href="#"><text style="background:orange;position:relative;left:55px;top:22px;padding:2px;font-size:13px;letter-spacing:1px;border-radius:10px; font-style:fantasy;"><b>PIZZA, VEGETARIAN</b></text>
</a>
<br>
<br><text style="letter-spacing:1px;font-size:22px;position:relative;left:37px;top:13px;">Mozzarella veg-Pizza</text>
<br>
<span class="fa fa-star checked" style="position:relative;left:82px;top:15px;"></span>
<span class="fa fa-star checked" style="position:relative;left:82px;top:15px;"></span>
<span class="fa fa-star checked" style="position:relative;left:82px;top:15px;"></span>
<span class="fa fa-star checked" style="position:relative;left:82px;top:15px;"></span>
<span class="fa fa-star checked" style="position:relative;left:82px;top:15px;"></span><br><br>
<text style="position:relative;top:10px;left:15px;font-weight:900">With Mozzarella Cheese And Onions</text>
<text style="position:relative;top:20px;left:110px;font-size:25px;"><br><b>Rs 329</b></text><br><br>
<a href="#" style="position:relative;left:105px;top:20px;background:#F1C40F;padding:10px;border-radius:15px;"><b>ORDER</b></a>
</div>
<div class="m1">
<img src="images/thali.jpg">
<a href="#"><text style="background:orange;position:relative;left:55px;top:22px;padding:2px;font-size:13px;letter-spacing:1px;border-radius:10px; font-style:fantasy;"><b>THALI, VEGETARIAN</b></text>
</a>
<br>
<br><text style="letter-spacing:1px;font-size:22px;position:relative;left:50px;top:13px;">Full Veggie-Thali</text>
<br>
<span class="fa fa-star checked" style="position:relative;left:82px;top:15px;"></span>
<span class="fa fa-star checked" style="position:relative;left:82px;top:15px;"></span>
<span class="fa fa-star checked" style="position:relative;left:82px;top:15px;"></span>
<span class="fa fa-star" style="position:relative;left:82px;top:15px;"></span>
<span class="fa fa-star" style="position:relative;left:82px;top:15px;"></span><br><br>
<text style="position:relative;top:10px;left:30px;font-weight:900">With Some Salads, Curd, Naans </text>
<text style="position:relative;top:20px;left:110px;font-size:25px;"><br><b>Rs 399</b></text><br><br>
<a href="#" style="position:relative;left:100px;top:20px;background:#F1C40F;padding:10px;border-radius:15px;"><b>ORDER</b></a>
</div>
<div class="m1">
<img src="images/desert.jpg">
<a href="#"><text style="background:orange;position:relative;left:55px;top:22px;padding:2px;font-size:13px;letter-spacing:1px;border-radius:10px; font-style:fantasy;"><b>CREAMY, ICECREAM</b></text>
</a>
<br>
<br><text style="letter-spacing:1px;font-size:22px;position:relative;left:40px;top:13px;">Chocolaty-Icecream</text>
<br>
<span class="fa fa-star checked" style="position:relative;left:82px;top:15px;"></span>
<span class="fa fa-star checked" style="position:relative;left:82px;top:15px;"></span>
<span class="fa fa-star checked" style="position:relative;left:82px;top:15px;"></span>
<span class="fa fa-star checked" style="position:relative;left:82px;top:15px;"></span>
<span class="fa fa-star" style="position:relative;left:82px;top:15px;"></span><br><br>
<text style="position:relative;top:10px;left:15px;font-weight:900">With Chocolaty-Banana,Nuts,Cherry</text>
<text style="position:relative;top:20px;left:110px;font-size:25px;"><br><b>Rs 249</b></text><br><br>
<a href="#" style="position:relative;left:110px;top:20px;background:#F1C40F;padding:10px;border-radius:15px;"><b>ORDER</b></a>
</div>
<div class="hgh">
<a href="#" style="position:relative;left:90vh;top:45vh; background:#F1C40F;color:black;padding:10px;border-radius:10px;text-decoration:none;font-size:20px">View More Dishes >>></a>
</div>
</div>
<div class="m2">
<h1>HAPPY MEAL TO YOUR HOME</h1>
<i class="fa fa-cutlery"><text style="color:white;"> Snacks Time</text></i>
<i class="fa fa-pie-chart" aria-hidden="true"></i>
</div>
<div class="menu_all3">
<h1>GET YOUR FOOD FAST & EASY</h1>
<p>----Follow the Steps----</p>
<ul>
<li>
<i class="fa fa-laptop" aria-hidden="true"></i>
<br>
<text style="background:orange;position:relative;left:3vh;font-size:20px;font-weight:900;top:10vh;padding:12px 18px 12px 18px;color:white;border-radius:40px;">1</text>
<br><br><br><br><br><br><br><br><br>
<span style="font-size:23px;position:relative;right:2vh;color:#424949;">Choose your <br><center>location</center></span>
</li>
<li>
<i class="fa fa-cutlery" aria-hidden="true"></i>
<br>
<text style="background:orange;position:relative;left:3vh;font-size:20px;font-weight:900;top:10vh;padding:12px 18px 12px 18px;color:white;border-radius:40px;">2</text>
<br><br><br><br><br><br><br><br><br>
<span style="font-size:23px;position:relative;right:2vh;color:#424949;">Choose your <br><center>restaurant</center></span>
</li>
<li>
<i class="fa fa-cart-arrow-down" aria-hidden="true"></i>
<br>
<text style="background:orange;position:relative;left:3vh;font-size:20px;font-weight:900;top:10vh;padding:12px 18px 12px 18px;color:white;border-radius:40px;">3</text>
<br><br><br><br><br><br><br><br><br>
<span style="font-size:23px;position:relative;right:2vh;color:#424949;">Make your <br><center>Order</center></span>
</li>
<li>
<i class="fa fa-gift" aria-hidden="true"></i>
<br>
<text style="background:orange;position:relative;left:2vh;font-size:20px;font-weight:900;top:10vh;padding:12px 18px 12px 18px;color:white;border-radius:40px;">4</text>
<br><br><br><br><br><br><br><br><br>
<span style="font-size:23px;position:relative;right:2vh;color:#424949;">First User Will <br><center>Get Gift</center></span>
</li>
<li>
<i class="fa fa-building-o" aria-hidden="true"></i>
<br>
<text style="background:orange;position:relative;left:2vh;font-size:20px;font-weight:900;top:10vh;padding:12px 18px 12px 18px;color:white;border-radius:40px;">5</text>
<br><br><br><br><br><br><br><br><br>
<span style="font-size:23px;position:relative;right:4vh;color:#424949;">Enjoy Your Meal <br><center>At Your Home</center></span>
</li>
</ul>
</div>
<%
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_food_management","root","root");
	Statement st =con.createStatement();
%>
<div class="slider">
<h1 style="text-align:center;padding-top:20px;padding-bottom:30px;font-size:50px;letter-spacing:1px;font-weight:500;" id="Pizza">PIZZA CORNER <i class="fa fa-pie-chart" aria-hidden="true" style="color:orange;font-size:50px;"></i></h1>
<div class="carousel" data-flickity='{"wrapAround":true,"autoPlay":true }'>
<%
String sql="Select * from dishes where category='pizza'";
ResultSet rs = st.executeQuery(sql);
while(rs.next()){
	Integer id=rs.getInt("d_id");
	String d_name = rs.getString("d_name");
	String ingredients = rs.getString("ingredients");
	Integer d_price=rs.getInt("d_price");
String filename = rs.getString("filename");
%>
<div class="carousel-cell">
<img src="images/<%=filename %>" class="image">
<div class="overlay">
    <div class="text" style="color:black;"><center><%=d_name %><i class="fa fa-smile-o" aria-hidden="true" style="font-weight:900"></i></center><b>Ingredients:</b><%=ingredients %><center><b>Price: <i class="fa fa-inr" aria-hidden="true"></i> <%=d_price %></b></center>
   <center><a href='Cart.jsp?d_id=<%=id %>' style="background:black;text-decoration:none;color:yellow;border-radius:20px;">Order Now</a></center>
    </div>
  </div>
</div>
<% 
}
}
catch(Exception e)
{
	out.println(e);
	}
%>
</div>
</div>
<% 
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_food_management","root","root");
	Statement st =con.createStatement();
%>
<div class="slider">
<h1 style="text-align:center;padding-top:40px;padding-bottom:30px;font-size:50px;letter-spacing:1px;font-weight:500;" id="Pasta">PASTA CORNER <i class="fa fa-cutlery" aria-hidden="true" style="color:orange;font-size:50px;"></i></h1>
<div class="carousel" data-flickity='{"wrapAround":true,"autoPlay":true }'>
<%
String sql1="Select * from dishes where category='pasta'";
ResultSet rs1 = st.executeQuery(sql1);
while(rs1.next()){
	Integer id=rs1.getInt("d_id");
	String d_name = rs1.getString("d_name");
	String ingredients = rs1.getString("ingredients");
	Integer d_price=rs1.getInt("d_price");
String filename = rs1.getString("filename");
%>
<div class="carousel-cell">
<img src="images/<%=filename  %>" class="image">
<div class="overlay">
    <div class="text" style="color:black;"><center><%=d_name %><i class="fa fa-smile-o" aria-hidden="true" style="font-weight:900"></i></center><b>Ingredients:</b><%=ingredients %><center><b>Price: <i class="fa fa-inr" aria-hidden="true"></i> <%=d_price %></b></center>
  <center><a href='Cart.jsp?d_id=<%=id %>' style="background:black;text-decoration:none;color:yellow;border-radius:20px;">Order Now</a></center>
  </div>
  </div>
</div>
<% 
}
}
catch(Exception e)
{
	out.println(e);
	}
%>
</div>
</div>
<% 
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_food_management","root","root");
	Statement st =con.createStatement();
%>
<div class="slider">
<h1 style="text-align:center;padding-top:40px;padding-bottom:30px;font-size:50px;letter-spacing:1px;font-weight:500;" id="Veg">VEGETARIAN CORNER <i class="fa fa-cutlery" aria-hidden="true" style="color:orange;font-size:50px;"></i></h1>
<div class="carousel" data-flickity='{"wrapAround":true,"autoPlay":true }'>
<%
String sql1="Select * from dishes where category='Vegetarian'";
ResultSet rs2 = st.executeQuery(sql1);
while(rs2.next()){
	Integer id=rs2.getInt("d_id");
	String d_name = rs2.getString("d_name");
	String ingredients = rs2.getString("ingredients");
	Integer d_price=rs2.getInt("d_price");
String filename = rs2.getString("filename");
%>
<div class="carousel-cell">
<img src="images/veg/<%=filename  %>" class="image">
<div class="overlay">
    <div class="text" style="color:black;"><center><%=d_name %><i class="fa fa-smile-o" aria-hidden="true" style="font-weight:900"></i></center><b>Ingredients:</b><%=ingredients %><center><b>Price: <i class="fa fa-inr" aria-hidden="true"></i> <%=d_price %></b></center>
  <center><a href='Cart.jsp?d_id=<%=id %>' style="background:black;text-decoration:none;color:yellow;border-radius:30px;">Order Now</a></center>
  </div>
  </div>
</div>
<% 
}
}
catch(Exception e)
{
	out.println(e);
	}
%>
</div>
</div>
<% 
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_food_management","root","root");
	Statement st =con.createStatement();
%>
<div class="slider">
<h1 style="text-align:center;padding-top:40px;padding-bottom:30px;font-size:50px;letter-spacing:1px;font-weight:500;" id="Non-veg">NON VEGETARIAN CORNER <i class="fa fa-cutlery" aria-hidden="true" style="color:orange;font-size:50px;"></i></h1>
<div class="carousel" data-flickity='{"wrapAround":true,"autoPlay":true }'>
<%
String sql1="Select * from dishes where category='Non Vegetarian'";
ResultSet rs3 = st.executeQuery(sql1);
while(rs3.next()){
	Integer id=rs3.getInt("d_id");
	String d_name = rs3.getString("d_name");
	String ingredients = rs3.getString("ingredients");
	Integer d_price=rs3.getInt("d_price");
String filename = rs3.getString("filename");
%>
<div class="carousel-cell">
<img src="images/non veg/<%=filename  %>" class="image">
<div class="overlay">
    <div class="text" style="color:black;"><center><%=d_name %><i class="fa fa-smile-o" aria-hidden="true" style="font-weight:900"></i></center><b>Ingredients:</b><%=ingredients %><center><b>Price: <i class="fa fa-inr" aria-hidden="true"></i> <%=d_price %></b></center>
  <center><a href='Cart.jsp?d_id=<%=id %>' style="background:black;text-decoration:none;color:yellow;border-radius:30px;">Order Now</a></center>
  </div>
  </div>
</div>
<% 
}
}
catch(Exception e)
{
	out.println(e);
	}
%>
</div>
</div>
<% 
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_food_management","root","root");
	Statement st =con.createStatement();
%>
<div class="slider">
<h1 style="text-align:center;padding-top:40px;padding-bottom:30px;font-size:50px;letter-spacing:1px;font-weight:500;" id="Salad">SALAD CORNER <i class="fa fa-cutlery" aria-hidden="true" style="color:orange;font-size:50px;"></i></h1>
<div class="carousel" data-flickity='{"wrapAround":true,"autoPlay":true }'>
<%
String sql1="Select * from dishes where category='Salad'";
ResultSet rs1 = st.executeQuery(sql1);
while(rs1.next()){
	Integer id=rs1.getInt("d_id");
	String d_name = rs1.getString("d_name");
	String ingredients = rs1.getString("ingredients");
	Integer d_price=rs1.getInt("d_price");
String filename = rs1.getString("filename");
%>
<div class="carousel-cell">
<img src="images/veg/<%=filename  %>" class="image">
<div class="overlay">
    <div class="text" style="color:black;"><center><%=d_name %><i class="fa fa-smile-o" aria-hidden="true" style="font-weight:900"></i></center><b>Ingredients:</b><%=ingredients %><center><b>Price: <i class="fa fa-inr" aria-hidden="true"></i> <%=d_price %></b></center>
  <center><a href='Cart.jsp?d_id=<%=id %>' style="background:black;text-decoration:none;color:yellow;border-radius:30px;">Order Now</a></center>
  </div>
</div>
</div>
<% 
}
}
catch(Exception e)
{
	out.println(e);
	}
%>
</div>
</div>
<% 
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_food_management","root","root");
	Statement st =con.createStatement();
%>
<div class="slider">
<h1 style="text-align:center;padding-top:40px;padding-bottom:30px;font-size:50px;letter-spacing:1px;font-weight:500;" id="Chinese">CHINESE CORNER <i class="fa fa-cutlery" aria-hidden="true" style="color:orange;font-size:50px;"></i></h1>
<div class="carousel" data-flickity='{"wrapAround":true,"autoPlay":true }'>
<%
String sql1="Select * from dishes where category='Chinese'";
ResultSet rs4 = st.executeQuery(sql1);
while(rs4.next()){
	Integer id=rs4.getInt("d_id");
	String d_name = rs4.getString("d_name");
	String ingredients = rs4.getString("ingredients");
	Integer d_price=rs4.getInt("d_price");
String filename = rs4.getString("filename");
%>
<div class="carousel-cell">
<img src="images/veg/<%=filename  %>" class="image">
<div class="overlay">
    <div class="text" style="color:black;"><center><%=d_name %><i class="fa fa-smile-o" aria-hidden="true" style="font-weight:900"></i></center><b>Ingredients:</b><%=ingredients %><center><b>Price: <i class="fa fa-inr" aria-hidden="true"></i> <%=d_price %></b></center>
  <center><a href='Cart.jsp?d_id=<%=id %>' style="background:black;text-decoration:none;color:yellow;border-radius:30px;">Order Now</a></center>
  </div>
</div>
</div>
<% 
}
}
catch(Exception e)
{
	out.println(e);
	}
%>
</div>
</div>
<% 
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_food_management","root","root");
	Statement st =con.createStatement();
%>
<div class="slider">
<h1 style="text-align:center;padding-top:40px;padding-bottom:30px;font-size:50px;letter-spacing:1px;font-weight:500;" id="Desert">DESERT CORNER <i class="fa fa-cutlery" aria-hidden="true" style="color:orange;font-size:50px;"></i></h1>
<div class="carousel" data-flickity='{"wrapAround":true,"autoPlay":true }'>
<%
String sql1="Select * from dishes where category='Desert'";
ResultSet rs6 = st.executeQuery(sql1);
while(rs6.next()){
	Integer id=rs6.getInt("d_id");
	String d_name = rs6.getString("d_name");
	String ingredients = rs6.getString("ingredients");
	Integer d_price=rs6.getInt("d_price");
String filename = rs6.getString("filename");
%>
<div class="carousel-cell">
<img src="images/veg/<%=filename  %>" class="image">
<div class="overlay">
    <div class="text" style="color:black;"><center><%=d_name %><i class="fa fa-smile-o" aria-hidden="true" style="font-weight:900"></i></center><b>Ingredients:</b><%=ingredients %><center><b>Price: <i class="fa fa-inr" aria-hidden="true"></i> <%=d_price %></b></center>
  <center><a href='Cart.jsp?d_id=<%=id %>' style="background:black;text-decoration:none;color:yellow;border-radius:30px;">Order Now</a></center>
  </div>
</div>
</div>
<% 
}
}
catch(Exception e)
{
	out.println(e);
	}
%>
</div>
</div>
<footer>hjgfjhfjhfgf</footer>
</body>
</html>


<% 
   }
   else{
%>
<jsp:include page="index.jsp">
   <jsp:param value="Hacking is bad thing, first login..." name="msg"/>
</jsp:include>
<%
   }
%>