<%@page import="model.CustomerDetails" %>
<%@page import="dao.CustomerDetailsDao" %>
<%@page import="java.util.List" %>

<%
String email=request.getParameter("email");
%>
<html>
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width,initiat-scale=1.0">
   <link rel="stylesheet" type="text/css" href="update.css">
   <script src="jquery.js" language="javascript"></script>
   <style type="text/css">
      a{
         color:#fff200;
      }
   </style>
</head>
<body background="rgba(0,0,0,0.5),rgba(0,0,0,0.5),url(images/d.jpg)center/cover no-repeat">
<script type="text/javascript">

function myfun(){
	var a=document.getElementById("passwords").value;
	var b=document.getElementById("passwordss").value;

	
	if(a==""){
		document.getElementById("messages").innerHTML="** Please fill Password";
		return false;
	}
	if(a.length<5){
		document.getElementById("messages").innerHTML="** Password are must be greater than 5 characters";
		return false;
	}
	if(a.length>15){
		document.getElementById("messages").innerHTML="** Password length should smaller than 15 characters";
		return false;
		
	}
	if(a!=b){
		document.getElementById("messagess").innerHTML="** Password are not same";
	    return false;
	}
	if(a==b){
		document.getElementById("message").innerHTML="** Password is updated successfully.";
		return true;
	}
}

</script>

<div class="wrapper">
        <div class="main" style="height:80vh;margin-top:100px;padding:50px;">
           <h1>Change Password</h1>
            <form action="" method="post" align='center' onsubmit="return myfun()" border='2' background='#ffff00' style="margin-top:30px;">
             <span id="message" style="color:white"> </span><br><br>
             <input type="email" name="email1" placeholder="Enter Email Id" value="<%=email%>" class="intpt"><br><br>
             <span id="message" style="color:white"> </span><br>
             <input type="password" name="password" placeholder="Enter New Password" id="passwords" class="intpt"><br><br>
             <span id="messages" style="color:white"> </span><br>
             <input type="password" name="cnfmpassword" placeholder="Confirm Password" id="passwordss" class="intpt"><br><br>
             <span id="messagess" style="color:white"> </span><br>
             <div class="bott" style="margin-top:15px;">
             <input type="submit" value="Reset Password" class="btn f1" onclick="myfun()">
             &nbsp;&nbsp;&nbsp;<a href="index.jsp"></a>
             </div>
            </form>
         </div>
</div>
</body>
</html>


<% 
if(request.getMethod().equals("POST"))
{
	String email1=request.getParameter("email1");
    String password =request.getParameter("password");
	

	
	CustomerDetails cust=new CustomerDetails();
	cust.setEmail(email1);
	cust.setPassword(password);
	
	
	CustomerDetailsDao custDao = new CustomerDetailsDao();
	Integer i = custDao.updatePassword(cust);
	if(i>0){
		response.sendRedirect("MenuAll.jsp");
	}
	else{
		response.sendRedirect("index.jsp");
	}
	out.println("<h1>Your Password is Updated!!!</h1>");
}
%>