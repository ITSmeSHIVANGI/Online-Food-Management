<%@page import="model.Order"%>
<%@page import="dao.OrderDao"%>
 <%@page import="java.util.*" %>
    <%@page import="java.sql.*" %>
<% 
Integer DishId=Integer.parseInt(request.getParameter("DishId"));
String Email=request.getParameter("Email");
Integer Price=Integer.parseInt(request.getParameter("Price"));
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" type="text/css" href="Order.css">
<script src="jquery.js" language="javascript"></script>
</head>
<body>
<div class="wrapper">
        <div class="main">
           <h1>Order Now</h1>
           <form action="" method="post" align="center">
            DishId:   <p><input type="text" name="DishId" readonly value="<%=DishId%>" class="intpt" ></p>
               
             Email:  <p><input type="text" name="Email"  readonly value="<%=Email%>"  class="intpt" ></p>
               
             Price:  <p><input type="text" name="Price" readonly value="<%=Price%>" class="intpt" ></p>
               
               <div class="bott">
               <p><input type="submit" name="Order" value="ORDER" class="btn f1" onclick="greet()"></p>
               <a href="Payment.jsp" style="text-decoration:none;background-color:rgba(214,214,214);color:#EB5758;font-weight: 900;
    padding: 15px;width:107px;border-radius:30px;position: relative;
    top: 17px" >GO TO PAY</a></br><br></center>
               </div>
               
           </form>
        </div>
    </div>



</body>
</html>
<%
if(request.getMethod().equals("POST"))
{
    Integer DishId1=Integer.parseInt(request.getParameter("DishId"));
	String Email1=request.getParameter("Email");
	Integer Price1=Integer.parseInt(request.getParameter("Price"));
	Order user=new Order();
	user.setDishId(DishId1);
	user.setEmail(Email1);
	user.setPrice(Price1);
		OrderDao dao=new OrderDao();
		Integer i=dao.add(user);
		
	out.println(i+"record added");
	out.println("<a href='index.jsp'>Home</a>");
	}
%>