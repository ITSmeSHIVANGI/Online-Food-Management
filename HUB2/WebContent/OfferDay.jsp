<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<style>
*{
margin:0;
padding:0;
}
body {
  font-family: Arial;
  width:100%;
  background:linear-gradient(rgba(0,0,0,0.7),rgba(0,0,0,0.7)),url("images/stylefood.jpg") center fixed no-repeat;
  background-size: cover;	
}
.offer{
  display:inline-flex;
}
.coupon {
  border: 5px dotted #bbb;
  width: 80%;
  border-radius: 15px;
  margin: 0 auto;
  margin-left:40px;
  max-width: 600px;
}

.container {
  padding: 2px 16px;
  background-color: #f1f1f1;
}

.promo {
  background: #ccc;
  padding: 3px;
}

.expire {
  color: red;
}
</style>
</head>
<body>
<h1 style="color:orange;text-align:center;margin-top:30px;margin-bottom:30px;">TODAY'S OFFERS</h1>
<div class="offer">
<div class="coupon">
  <div class="container">
    <h3>Company Logo</h3>
  </div>
  <img src="images/combo.jpg" alt="Avatar" style="width:100%;">
  <div class="container" style="background-color:white">
    <h2><b>20% OFF YOUR PURCHASE</b></h2> 
    <p>It Includes, 2 Large Pizza, 1.5 litter Cold Drink, et nam pertinax gloriatur. Sea te minim soleat senserit, ex quo luptatum tacimates voluptatum, salutandi delicatissimi eam ea. In sed nullam laboramus appellantur, mei ei omnis dolorem mnesarchum.</p>
  </div>
  <div class="container">
    <p>Use Promo Code: <span class="promo">BOH232</span></p>
    <p class="expire">Expires: March 01, 2021</p>
  </div>
</div>
<div class="coupon">
  <div class="container">
    <h3>Company Logo</h3>
  </div>
  <img src="images/combo2.jpg" alt="Avatar" style="width:100%;height:55vh;object-fit: cover;">
  <div class="container" style="background-color:white">
    <h2><b>40% OFF YOUR PURCHASE</b></h2> 
    <p>Lorem ipsum ,Lorem ipsum dolor sit amet, et nam pertinax gloriatur. Sea te minim soleat senserit, ex quo luptatum tacimates voluptatum, salutandi delicatissimi eam ea. In sed nullam laboramus appellantur, mei ei omnis dolorem mnesarchum.</p>
  </div>
  <div class="container">
    <p>Use Promo Code: <span class="promo">BOH232</span></p>
    <p class="expire">Expires: Mar 03, 2021</p>
  </div>
</div>
</div>
</body>
</html> 
