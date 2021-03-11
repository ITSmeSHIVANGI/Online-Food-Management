<%@page import="model.CustomerDetails" %>
<%@page import="dao.CustomerDetailsDao" %>
<%@page import="java.util.List" %>
<% 
String firstName =request.getParameter("firstName");
String lastName =request.getParameter("lastName");
String email=request.getParameter("email");
String mobile=request.getParameter("mobile");
String address =request.getParameter("address");
String city =request.getParameter("city");
String state =request.getParameter("state");
Integer pincode =Integer.parseInt(request.getParameter("pincode"));
%>
<html>
<head>
   <meta charset="UTF-8">
   <meta name="viewport" content="width=device-width,initiat-scale=1.0">
   <link rel="stylesheet" type="text/css" href="update.css">
</head>
<body>
<div class="wrapper">
        <div class="main">
           <h1>Update Profile</h1>
            <form method="post" align='center' border='2' background='#ffff00'>
             <input type="text" name="firstName1" placeholder="Enter First Name" value="<%=firstName%>" class="intpt"><br><br>
             <input type="text" name="lastName1" placeholder="Enter Last Name" value="<%=lastName%>" class="intpt"><br><br>
             <input type="email" name="email1" placeholder="Enter Email" value="<%=email%>" class="intpt"><br><br>
             <input type="text" name="mobile1" placeholder="Enter Mobile" value="<%=mobile%>" class="intpt"><br><br>
             <input type="text" name="address1" placeholder="Enter Address" value="<%=address%>" class="intpt"><br><br>
             <input type="text" name="city1" placeholder="Enter City Name" value="<%=city%>" class="intpt"><br><br>   
             <input type="text" name="state1" placeholder="Enter State Name" value="<%=state%>" class="intpt"><br><br>
             <input type="text" name="pincode1" placeholder="Enter Pin Code" value="<%=pincode%>" class="intpt"><br><br>
             
             <div class="bott">
             <input type="submit" value="Update Record" class="btn f1">
             </div>
            </form>
         </div>
</div>
</body>
</html>
<% 
if(request.getMethod().equals("POST"))
{
	String firstName1 =request.getParameter("firstName1");
	String lastName1 =request.getParameter("lastName1");
	String email1=request.getParameter("email1");
	String mobile1=request.getParameter("mobile1");
	String address1 =request.getParameter("address1");
	String city1 =request.getParameter("city1");
    String state1 =request.getParameter("state1");
    Integer pincode1 =Integer.parseInt(request.getParameter("pincode1"));
	

	
	CustomerDetails cust=new CustomerDetails();
	cust.setFirstName(firstName1);
	cust.setLastName(lastName1);
	cust.setEmail(email1);
	cust.setMobile(mobile1);
	cust.setAddress(address1);
	cust.setCity(city1);
	cust.setState(state1);
	cust.setPincode(pincode1);
	
	
	CustomerDetailsDao custDao = new CustomerDetailsDao();
	Integer i = custDao.updateRecord(cust);
	response.sendRedirect("MenuAll.jsp");
	out.println("<h1>Your Profile is Updated!!!</h1>");
}
%>