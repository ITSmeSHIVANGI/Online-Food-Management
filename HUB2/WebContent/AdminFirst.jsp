<!DOCTYPE html>

<html lang="en" dir="ltr">
  <head>
    <meta charset="utf-8">
    <link rel="stylesheet" href="AdminFirst.css">
    <script src="https://code.jquery.com/jquery-3.4.1.js"></script>
    <script src="https://kit.fontawesome.com/a076d05399.js"></script>
    <style>
  body{
	height:90vh;
	background:linear-gradient(rgba(0,0,0,0.1),rgba(0,0,0,0.1)),url(images/jennie-brown.jpg)center/cover no-repeat;   
}
    </style>
  </head>
  <body>
    <div class="btn">
      <span class="fas fa-bars"></span>
    </div>
<nav class="sidebar">
      <div class="text">
Contents</div>
<ul>

<li>
          <div class="feat-btn">Home
            <span class="fas fa-caret-down first"></span>
          </div>
          <ul class="feat-show">
<li><a href="#">Reservation Section</a></li>
<li><a href="#">About Us Section</a></li>
<li><a href="#">Contact Us Section </a></li>
</ul>
</li>
<li>
          <div class="serv-btn">Menu Page
            <span class="fas fa-caret-down second"></span>
          </div>
          <ul class="serv-show">
<li><a href="ViewAll2.jsp">Category Section</a></li>
<li><a href="#">Image Section</a></li>
</ul>
</li>
<li>
          <div class="table-btn">Tables
            <span class="fas fa-caret-down first"></span>
          </div>
          <ul class="table-show">
<li><a href="AllCustomer.jsp">Customer Details </a></li>
		  <li><a href="AllForgotPassword.jsp">Password Reset </a></li>
					<li><a href="AllReservation.jsp">Reservation </a></li>
					<li><a href="AllContactUs.jsp">Contact Us </a></li>
					<li><a href="AllAvailableStock.jsp">Available Stock </a></li>
					<li><a href="ViewAll2.jsp">Dishes </a></li>
					<li><a href="AllOrders.jsp">Orders </a></li>
					<li><a href="AllPayment.jsp">Payment </a></li>
</ul>
</li>
</nav>
    <div class="content">
      <div class="header" style="color:black;font-size:50px;">Welcome to ADMIN ZONE</div>
      <br>
      <br>
      
<p>
<h1 style="color:black;font-size:38px;">Here you can keep Track of:</h1>
<br>
<div class="admin_functions" style="color:black; font-weight:700;font-size:22px;">
&nbsp;1)Customers<br>
&nbsp;2)Stocks<br>
&nbsp;3)Dishes<br>
&nbsp;4)Orders of the customers<br>
&nbsp;5)Payment<br>
&nbsp;6)Menu page<br>
</div>
<!--HTML CSS & Javascript (Full Tutorial)--></p>
</div>
<script>
    $('.btn').click(function(){
      $(this).toggleClass("click");
      $('.sidebar').toggleClass("show");
    });
      $('.feat-btn').click(function(){
        $('nav ul .feat-show').toggleClass("show");
        $('nav ul .first').toggleClass("rotate");
      });
      $('.serv-btn').click(function(){
        $('nav ul .serv-show').toggleClass("show1");
        $('nav ul .second').toggleClass("rotate");
      });
	  
	        $('.table-btn').click(function(){
        $('nav ul .table-show').toggleClass("show2");
        $('nav ul .second').toggleClass("rotate");
      });
	  
	  
      $('nav ul li').click(function(){
        $(this).addClass("active").siblings().removeClass("active");
      });
    </script>

  </body>
</html>
