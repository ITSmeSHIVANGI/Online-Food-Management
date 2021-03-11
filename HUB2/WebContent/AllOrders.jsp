<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@page import="dao.OrderDao"%>
<%@page import="java.util.List"%>
<%@page import="model.Order"%>
<%@page import="java.util.Iterator"%>
    
<html>
<head>
<link rel="stylesheet" type="text/css" href="table.css">
</head>
<body>
<%

	OrderDao ordersDao=new OrderDao();

%>
	<div class="table-container">
		<h1 class="heading"><center>Orders Table</center></h1>
		<span><a href="AdminFirst.jsp"><button>BACK</button></a></span><br>
			<table class="table">
				<thead>
					<tr>
					
						<th>DISH ID</th>
						<th>E-mail</th>
						<th>PRICE</th>
						
					</tr>
				</thead>


<% 	
List<Order> allorders=ordersDao.findAllOrders();
Iterator<Order> itr = allorders.iterator();
	while(itr.hasNext())
	{
		Order orders=itr.next();	
%>
	<tbody>
	<tr>
	<td data-label="DISH ID"><%=orders.getDishId()%></td>
	<td data-label="E-mail"><%= orders.getEmail()%></td>
	<td data-label="PRICE"><%= orders.getPrice()%></td>
<% 


	// out.println("<td ><span><a href='"DeleteCustomer.jsp?Email=<%=customerDetails.getEmail()'"><button>remove</button></a></span></td>"); 
%>


	</tr>
	</tbody>
	
<% 
	}
%>

	</table>

</div>
</body>
</html>