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
<div class="wrapper">
        <div class="main" style="height:70vh;margin-top:100px;padding:50px;">
           <h1>Reset Password</h1>
            <form action="" method="post" align='center' border='2' background='#ffff00' style="margin-top:30px;">
             <input type="email" name="email1"  placeholder="Enter Email Id" value="<%=email %>" class="intpt"><br><br>
             <input type="password" name="password" placeholder="Enter New Password" class="intpt"><br><br>
             <input type="password" name="password" placeholder="Confirm Password" class="intpt"><br><br>
             <div class="bott" style="margin-top:20px;">
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
		response.sendRedirect("index.jsp");
	}
	
	out.println("<h1>Your Password is Updated!!!</h1>");
}
%>
