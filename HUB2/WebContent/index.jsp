<%@page import="dao.CustomerDetailsDao"%>
<%@page import="model.CustomerDetails" %>
<%@page import="dao.ContactUsDao" %>
<%@page import="model.ContactUs" %>
<%@page import="java.io.*"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
    <title>Responsive Food/Restaurant Website Design</title>
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/font-awesome/4.7.0/css/font-awesome.min.css" integrity="sha384-wvfXpqpZZVQGK6TAh5PVlGOfQNHSoD2xbE+QkPxCAFlNEevoEH3Sl0sibVcOQVnN" crossorigin="anonymous">
    <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Exo+2:ital,wght@1,700&display=swap" rel="stylesheet">
    <link rel="preconnect" href="https://fonts.gstatic.com">
<link href="https://fonts.googleapis.com/css2?family=Lobster&display=swap" rel="stylesheet">
    <link rel="stylesheet" href="style.css">
    <script src="jquery.js" language="javascript"></script>
    
    <style>
       html {
          font-size: 50%;
       }
       #header .fa-bars {
          font-size: 4rem;
          z-index: 10000;
          color: #FFF200;
          cursor: pointer;
          display:none;
       }
       #footer{
          min-height:10vh;
       }
       #footer .brand .icons a:hover {
               color: #FFF200;
            }
       @media (max-width: 768px) {
          
           #header .fa-bars {
              display:block;
           }
          
           #header nav {
              position: fixed;
              top: 0;
              left: -120%;
              height: 100vh;
              width: 35rem;
              background:#000;
              transition:1.0s;
           }
  
           #header .menu.active {
              position: fixed;
              top: 0;
              left: 0;
              height: 100vh;
              width: 35rem;
              background:#000;
           }
           
           #header nav ul {
               -webkit-box-orient: vertical;
               -webkit-box-direction: normal;
               -ms-flex-flow: column;
               flex-flow: column;
               -webkit-box-pack: center;
               -ms-flex-pack: center;
               justify-content: center;
               height: 100%;
            }
            #header nav ul li {
               margin: 2rem 0;
            }
            #header nav ul li a {
               font-size: 2rem;
               border-radius: 3rem;
            }
            #header nav ul li a:hover {
               padding: .25rem 3.75rem;
               color: #333;
               background: #FFF200;
            }
            .toggle{
               width:45px;
               height:60px;
               
               background-position:center;
               background-size:25px;
               background-repeat:no-repeat;
               cursor:pointer;
            }
            .toggle.active{
               width:40px;
               height:40px;
               
               color:#FFF200;
               background-position:center;
               background-size:25px;
               background-repeat:no-repeat;
               cursor:pointer;
            }
            #home .content{
               padding:45px 10px;
            }
            #home .content h1{
               font-size:4em;
            }
            #home .content h2{
               font-size:3.5em;
            }
            #home .content h3{
               font-size:3em;
            }
            #home .content button {
               margin-top:2px;
               padding:2px 3px;
               font-size:16px;
            }
            #about{
               height:170vh;
            }
            #about .content{
               transform:translateX(0%);
            }
            #about .image {
               text-align: center;
            }
            #about .image img {
               transform:translateX(20%) translateY(-13%);
               width: 70vw;
            }
            #contact .row{
               transform:translateX(-93%);
            }
            #dish .all{
               transform:translateX(-90%);
            }
            #register .main{
               width:400px;
               transform:translateX(-23%);
            }
            #login .login-box{
               transform:translateX(-33%);
            }
            #footer .brand .logo img{
               transform:translateX(-6%);
            }
            
       }
    </style>
</head>
<body>
<!-- header section starts -->

<header id="header">

<nav>
    <ul class="menu">
        <li><a href="#home" onclick="toggleMenu();">Home</a></li>
        <li><a href="#about" onclick="toggleMenu();">About</a></li>
        <li><a href="#dish" onclick="toggleMenu();">Dishes</a></li>
        <li><a href="#register" onclick="toggleMenu();">Registration</a></li>
        <li><a href="#login" onclick="toggleMenu();">LogIn</a></li>
        <li><a href="#contact" onclick="toggleMenu();">Contact</a></li>
        <li><a href="reservation.jsp" onclick="toggleMenu();">Reservation</a></li>
    </ul>
</nav>
 <div class="toggle" onclick="toggleMenu();">  
  <i class="fa fa-bars fa-4x"></i>
 </div>    
   
   <a href="#" class="logo"><img src="images/logo2.jpg" alt=""></a>
</header>
<!-- header section ends -->


<!-- home section starts  -->

<section id="home" class="container-fluid">
   <div class="row min-vh-100 align-items-center">
    
  <div class="col-md-8 ml-md-5 text-md-left text-center content">
    <h1>Food that you can't resist</h1>
    <h2>Enjoy the marvelous Taste</h2>
    <h3>***Delight in Every Bite***</h3>
    <br><a href="#about"><button>About Us</button></a>
  </div>


   <div class="video-container">
    <video id="slider" controls autoplay muted loop class="vid vid1" width="800" height="500">
      <source src="images/video5.mp4" type="video/mp4">
    </video>
   </div>
   <div class="controls">
    <div class="dots dot1" onclick="videoUrl('images/video5.mp4')"><span></span></div>
    <div class="dots dot2" onclick="videoUrl('images/video3.mp4')"><span></span></div>
    <div class="dots dot3" onclick="videoUrl('images/video4.mp4')"><span></span></div>
    <div class="dots dot3" onclick="videoUrl('images/video7.mp4')"><span></span></div>
    <div class="dots dot3" onclick="videoUrl('images/video.mp4')"><span></span></div>
   </div>
   
</div>

</section>

<!-- about part starts -->

<section id="about" class="container">

    <div class="heading text-center">
    <h1><span>About</span> Us</h1>
    </div>
         
           <div class="row min-vh-100">

        <div class="col-md-6 text-center text-md-left align-self-center content">
            <h1>  WELCOME TO OUR PLACE !!! </h1><br>
            <h1>****************************</h1>
            <h3>" THE BEST YOU NEED AND THE BEST WE GIVE "</h3><br>
            <p>The Online Food Ordering System is intended to provide complete
             solutions for customers through a single gateway using the internet.
             The Online Food Management Site is very helpful for ordering the
             food since it provide various Food for customer on the basis of their
             choice.<br></p><br>
            <p>Customer check the list of food available and
             ordered it. The developed Online Food management system is web-
             based which Requires Customer Registration & Food Search and Subscription
              Option for Customer.<br><br>WE PROVIDE YOU WITH THE BEST FOOD ACROSS SOME CITIES. 
             OUR GOAL IS TO PROVIDE YOU THE BEST FOOD SO THAT YOU CAN ENJOY YOUR GOOD FOOD WITH BIG FUN.</p><br><br>
            <a href="#dishes"><button>Our Dishes</button></a>
        </div>
           
           <div class="col-md-6 image">
            <img src="images/chef3.jpg" alt="">
           </div>
           
        </div>
        
                
</section>

<!-- dish section starts  -->

<section id="dish" class="container">

    <div class="heading text-center">
        <h1>Our Dishes</h1>
    </div>
    <div class="box-container">

        <div class="box">
            <img src="images/e.jpg" alt="">
            <div class="info">
                <h3>Salad</h3>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quisquam, nihil.</p>
                <a href="#"><button>view</button></a>
            </div>
        </div>
        <div class="box">
            <img src="images/img10.jpg" alt="">
            <div class="info">
                <h3>Spaghetti</h3>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quisquam, nihil.</p>
                <a href="#"><button>view</button></a>
            </div>
        </div>
        <div class="box">
            <img src="images/f.jpg" alt="">
            <div class="info">
                <h3>Shake</h3>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quisquam, nihil.</p>
                <a href="#"><button>view</button></a>
            </div>
        </div>
        <div class="box">
            <img src="images/g.jpg" alt="">
            <div class="info">
                <h3>Juice</h3>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quisquam, nihil.</p>
                <a href="#"><button>view</button></a>
            </div>
        </div>
        <div class="box">
            <img src="images/img22.jpg" alt="">
            <div class="info">
                <h3>Nonveg</h3>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quisquam, nihil.</p>
                <a href="#"><button>view</button></a>
            </div>
        </div>
        <div class="box">
            <img src="images/h.jpg" alt="">
            <div class="info">
                <h3>Snack</h3>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quisquam, nihil.</p>
                <a href="#"><button>view</button></a>
            </div>
        </div>
        <div class="box">
            <img src="images/i.jpg" alt="">
            <div class="info">
                <h3>Burger</h3>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quisquam, nihil.</p>
                <a href="#"><button>view</button></a>
            </div>
        </div>
        <div class="box">
            <img src="images/img50.jpeg" alt="">
            <div class="info">
                <h3>Vegroll</h3>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quisquam, nihil.</p>
                <a href="#"><button>view</button></a>
            </div>
        </div>
        <div class="box">
            <img src="images/a.jpg" alt="">
            <div class="info">
                <h3>Sandwich</h3>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quisquam, nihil.</p>
                <a href="#"><button>view</button></a>
            </div>
        </div>
        <div class="box">
            <img src="images/img3.jpg" alt="">
            <div class="info">
                <h3>Pizza</h3>
                <p>Lorem ipsum dolor sit amet consectetur, adipisicing elit. Quisquam, nihil.</p>
                <a href="#"><button>view</button></a>
            </div>
        </div>
        
     </div>
     
     <div class="all text-center">
       <br> <a href="#login"><button>--All Dishes--</button></a>
       
    </div>
</section>

<!-- about part ends -->

<!-- registration part starts -->
<%-- <section id="register" class="register" style="background:url(images/d.jpg)no-repeat;background-size:cover;min-height:130vh;margin-top:30px;">
<div class="regform" style="margin-top=20px;"><h1>Registration Form</h1></div>

<div class ="main">
	<form action="register.jsp" method="post">
		<div id="name">
			<h2 class="name">Name</h2>
			<input class="firstname" type="text" name="firstName" required><br>
			<label class="firstlabel">First Name</label>
			<input class="lastname" type="text" name="lastName" required>
			<label class="lastlabel">Last Name</label>
		</div>
		
		<h2 class="name"> Email</h2>
		<input class="email" type="email" name="email" required>
		
		<h2 class="name">Mobile</h2>
		<input class="number" type="text" name="mobile" required>
		
		<div class="form-row">
			<div class="address">
				<h2 class="name">Address</h2>
			</div>
			
			<div class="address-input">
				<textarea required name="address" id="address" cols="28" rows="3"></textarea>
			</div>
		</div>
		
		
		<div id="name">
			<h2 class="name">Location</h2>
			<input class="city" type="text" name="city" required><br>
			<label class="citylabel">City</label>
			<input class="state" type="text" name="state" required>
			<label class="statelabel">State</label>
		</div>
		
		<h2 class="name">Pincode</h2>
		<input class="pincode" type="text" name="pincode" required>
		
		
		
		<h2 class="name">Password</h2>
		<input class="password" type="password" name="password" id="psw" required>
		
		
		
		<input type="submit" value="signup" class="response"> 
		<span class="checkmark"></span>
		&nbsp;&nbsp;&nbsp;&nbsp;
		<input type="reset" value="reset" class="response"> 
		<span class="checkmark"></span>
		
		<br>
		<br>
		</form>
		
</div>
</section>
--%>

<section id="register" style="background:url(images/d.jpg)no-repeat;background-size:cover;min-height:130vh;margin-top:30px;">
<div class="wrapper">
        <div class="main">
           <h1>Register Here</h1>
            <form method="post" name="frm" align='center' background='#ffff00'>
             <input type="text" name="firstName" placeholder="Enter First Name" class="intpt" required><br><br>
             <input type="text" name="lastName" placeholder="Enter Last Name"  class="intpt" required><br><br>
             <input type="email" name="email" placeholder="Enter Email"  class="intpt" required><br><br>
             <input type="text" name="mobile" placeholder="Enter Mobile" min="1111111111" max="9999999999"  class="intpt" required><br><br>
             <input type="text" name="address" placeholder="Enter Address"  class="intpt" required><br><br>
             <input type="text" name="city" placeholder="Enter City Name"  class="intpt" required><br><br>   
             <input type="text" name="state" placeholder="Enter State Name" class="intpt" required><br><br>
             <input type="text" name="pincode" placeholder="Enter Pin Code" min="111111" max="999999" class="intpt" required><br><br>
             <input type="password" name="password" placeholder="Enter Password" id="psw" class="intpt" required><br><br>
             <input type="password" name="confirmpassword" placeholder="Re-enter Password" id="Cpsw" class="intpt" required>
             <div class="bott">
             <input type="submit" value="SIGN UP" class="btn f1" id="wrong" onclick="return val()">
             </div><br>
             <h2>Already have account?<a href="#login">&nbsp;Sign In</a></h2>
            </form>
         </div>
</div>

</section>
<%
try{
if(request.getMethod().equals("POST"))
{
	String firstName = request.getParameter("firstName");
String lastName = request.getParameter("lastName");
String email = request.getParameter("email");
String mobile = request.getParameter("mobile");
String address = request.getParameter("address");
String city = request.getParameter("city");
String state = request.getParameter("state");
Integer pincode = Integer.parseInt(request.getParameter("pincode"));
String password = request.getParameter("password");

CustomerDetails customerDetails=new CustomerDetails();

customerDetails.setFirstName(firstName);
customerDetails.setLastName(lastName);
customerDetails.setEmail(email);
customerDetails.setMobile(mobile);
customerDetails.setAddress(address);
customerDetails.setCity(city);
customerDetails.setState(state);
customerDetails.setPincode(pincode);
customerDetails.setPassword(password);


	CustomerDetailsDao customerDetailsDao=new CustomerDetailsDao();
	Integer i=customerDetailsDao.registerRecord(customerDetails);
	}
}catch(Exception e){
	//out.println(e);
	out.println("wrong input Enter the value within range");
}
%>


<!-- registration part ends -->

<!-- login part starts -->

<%
   String msg=request.getParameter("msg");
   if(msg!=null)
   {
	   out.println(msg);
   }
%>


<section id="login" class="login" style="background:url(images/d.jpg)no-repeat;min-height:100vh;margin:0;background-size:cover;">
<div class="login-box">
	<img src= "images/men.jpg" alt="login" class="keyimage">
	<form action="Validate.jsp">

	<div class="user-box">
		<input type="text" name="email" required="" placeholder="Email">
		
	</div>


	<div class="user-box">
		<input type="Password" name="password" required="" placeholder="UserPassword" id="password">
		<span>
		   <i class="fa fa-eye" aria-hidden="true" id="eye" onclick="toggle();"></i>
		</span>
	</div>
	<div id="animation">
	<input type="submit" value="login">

	</div>
	<a href="forgotpassword.jsp">
		<span></span>
		<span></span>
		<span></span>
		<span></span>
		
		forgot password?</a>

	</form>
</div>
</section>


<!-- login part ends -->

<!-- contact section starts  -->

<section id="contact" class="container-fluid" style="background:url(images/d.jpg)no-repeat;background-size:cover;min-height:100vh;margin:0;">

    <div class="heading text-center">
        <h1><span>Contact</span> Us</h1>
    </div>
    
    <div class="row justify-content-center">

        <form method="post" class="col-md-7" style="transform:translateX(95%);width:460px;">

            <div class="inputBox">
                <input type="text" name="fullName" required>
                <h3>Full Name</h3>
            </div>
            <div class="inputBox">
                <input type="email" name="email" required>
                <h3>E-Mail</h3>
            </div>
            <div class="inputBox">
                <textarea required name="message" id="message" cols="30" rows="10"></textarea>
                <h3>Message</h3>
            </div>
            <input type="submit" value="Send" onclick="greet()">
         </form>
    </div>
    
</section>
<%
try{
if(request.getMethod().equals("POST")){
String fullName = request.getParameter("fullName");
String email = request.getParameter("email");
String message =request.getParameter("message");

ContactUs cu = new ContactUs();

cu.setFullName(fullName);

cu.setEmail(email);
cu.setMessage(message);
ContactUsDao cuDao = new ContactUsDao(); 
Integer i=cuDao.addRecord(cu);

}
}
catch(Exception e) {
	out.println(e);
}

%>

<!-- footer section starts  -->

<section id="footer" class="container-fluid" style="background:#808080;margin-top:0px;">

   <div class="row align-items-center">

   <div class="col-md-4 brand">

   <a href="#" class="logo"><img src="images/logooo.png" alt="" style="height:9rem;width:10rem;left:5%;top:30%;transform:translateX(-430%) translateY(320%);"></a>

   <div class="icons" style="font-size:2rem;margin:4rem 2rem;transform:translateX(-26%) translateY(360%);text-decoration:none;">
    <a href="#" class="fa fa-facebook-square"></a>
    <a href="#" class="fa fa-twitter-square"></a>
    <a href="#" class="fa fa-instagram"></a>
    <a href="#" class="fa fa-pinterest-square"></a>
   </div>
   </div>

   <div class="col-md-4 footer-links" style="margin:2rem 0;padding:8px;">
   <h3>Links:</h3>
   <a href="#home" style="margin:0;">Home</a>
   <a href="#about" style="margin:0;">About</a>
   <a href="#dish" style="margin:0;">Dish</a>
   <a href="#register" style="margin:0;">Register</a>
   <a href="#login" style="margin:0;">Login</a>
   <a href="#contact" style="margin:0;">Contact</a>
   </div>

   <div class="col-md-4 text-center text-md-left letter" style="transform:translateX(75%) translateY(-100%);">
   <h2 style="margin:2rem 0;">Newsletter</h2>
   <input type="text" style="padding:0 1rem;"><br>
   <input type="submit" value="subscribe" style="transform:translateX(0%) translateY(20%);">
   </div>

   </div>
   <h1>&copy; Copyright @ 2021 by <span>Ms. Web Developers</span></h1>
</section>
<!-- footer section ends  -->


<!-- script part starts  -->

<script type="text/javascript">
      window.addEventListener('scroll', function(){
    	const header=document.querySelector('header');
    	header.classList.toggle("sticky", window.scrollY > 0);
      });
</script>

</body>
</html>