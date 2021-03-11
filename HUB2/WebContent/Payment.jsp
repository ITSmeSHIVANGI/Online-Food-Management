<%@page import="java.sql.*" %>
<%
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_food_management","root","root");	
	%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="Cart.css">
<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css">
<script src="Drop.js"></script>
<script src="ext.js" language="javascript"></script>
<style>
body {
  font-family: Arial;
  font-size: 17px;
  padding: 8px;
}

* {
  box-sizing: border-box;
}

.row {
  display: -ms-flexbox; /* IE10 */
  display: flex;
  position:relative;
  -ms-flex-wrap: wrap; /* IE10 */
  flex-wrap: wrap;
  margin: 0 -16px;
}

.col-25 {
  -ms-flex: 25%; /* IE10 */
  flex: 25%;
}

.col-50 {
  -ms-flex: 50%; /* IE10 */
  flex: 50%;
}

.col-75 {
  -ms-flex: 75%; /* IE10 */
  flex: 75%;
}

.col-25,
.col-50,
.col-75 {
  padding: 0 16px;
  margin-top:10px;
}

.container {
  background-color: #f2f2f2;
  padding: 5px 20px 15px 20px;
  border: 1px solid lightgrey;
  border-radius: 3px;
  height:120vh;
  position:relative;
  top:128px;
}
form{
  margin-left:50vh;
}
input[type=text] {
  width: 100%;
  margin-bottom: 20px;
  padding: 12px;
  border: 1px solid #ccc;
  border-radius: 3px;
}

label {
  margin-bottom: 10px;
  display: block;
}

.icon-container {
  margin-bottom: 20px;
  padding: 7px 0;
  font-size: 24px;
}

.btn {
  background-color:orange;
  color: black;
  padding: 12px;
  margin: 10px 0;
  margin-left:60vh;
  border: none;
  bottom: 60px;
  position: relative;
  width: 50%;
  border-radius: 3px;
  cursor: pointer;
  font-size: 17px;
}

.btn:hover {
  background-color: #45a049;
}

a {
  color: #2196F3;
}

hr {
  border: 1px solid lightgrey;
}

span.price {
  float: right;
  color: grey;
}

/* Responsive layout - when the screen is less than 800px wide, make the two columns stack on top of each other instead of next to each other (also change the direction - make the "cart" column go on top) */
@media (max-width: 800px) {
  .row {
    flex-direction: column-reverse;
  }
  .col-25 {
    margin-bottom: 20px;
  }
}
</style>
</head>
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
<div class="row">
  <div class="col-75">
    <div class="container">
      <form method="post">

          <div class="col-50">
            <h3>Payment</h3>
            <a href="#" style="color:orange;text-decoration:none;position:relative;left:50vh;bottom:4vh;font-size:20px;"><b>Cash On Delivery</b></a>
            <label for="fname">Accepted Cards</label>
            <div class="icon-container">
              <i class="fa fa-cc-visa" style="color:navy;"></i>
              <i class="fa fa-cc-amex" style="color:blue;"></i>
              <i class="fa fa-cc-mastercard" style="color:red;"></i>
              <i class="fa fa-cc-discover" style="color:orange;"></i>
            </div>
            <label for="cname">Name on Card</label>
            <input type="text" id="cname" name="holder_name" placeholder="John More Doe" required>
            <label for="ccnum">Credit card number</label>
            <input type="text" id="ccnum" name="account_num" placeholder="1111-2222-3333-4444" required>
            <label for="expmonth">Exp Month</label>
            <input type="text" id="expmonth" name="exp_month" placeholder="September" required>
            <div class="row">
              <div class="col-50">
                <label for="expyear">Exp Year</label>
                <input type="text" id="expyear" name="exp_year" placeholder="2018" required>
              </div>
              <div class="col-50">
                <label for="cvv">CVV</label>
                <input type="text" id="cvv" name="CVV" placeholder="352" required>
              </div>
            </div>
          </div>
          
        </div>
        <label>
          <input type="checkbox" checked="checked" name="sameadr" style="margin-left:56vh;position:relative;top:-86px;color:black;"><text style="color:black;top:-86px;position:relative;"> Shipping address same as billing</text>
        </label>
        <input type="submit" value="Continue to checkout" class="btn" onclick="payment()">
      </form>
    </div>
  </div>
</div>
<footer>hjgfjhfjhfgf</footer>
</body>
</html>
<%
if(request.getMethod().equals("POST"))
{
	String holder_name=request.getParameter("holder_name");
	String account_num=request.getParameter("account_num");
	String exp_month=request.getParameter("exp_month");
	Integer exp_year=Integer.parseInt(request.getParameter("exp_year"));
	Integer CVV=Integer.parseInt(request.getParameter("CVV"));
	PreparedStatement pst =con.prepareStatement("insert into payment values(?,?,?,?,?)");
	pst.setString(1,holder_name);
	pst.setString(2, account_num);
	pst.setString(3, exp_month);
	pst.setInt(4, exp_year);
	pst.setInt(5, CVV);
	pst.executeUpdate();

	out.println("<a href='MenuAll.jsp'>Home</a>");
	out.println("<a href='Payment.jsp'>Back</a>");
	}
%>
<%
}
catch(Exception e){
	out.println(e);
}
%>

