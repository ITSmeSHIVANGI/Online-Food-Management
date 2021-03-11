<%@page import="dao.AvailableStockDao"%>
<%@page import="model.AvailableStock"%>
<%@page import="java.util.List" %>
<%@page import="java.util.Iterator" %>


<html>
<head>
<link rel="stylesheet" type="text/css" href="table.css">
</head>
<body>

<%

    AvailableStockDao availableStockDao = new AvailableStockDao();
  
%>
	<div class="table-container">
		<h1 class="heading"><center>AVAILABLE STOCK TABLE</center></h1>
		<td colspan='2' align='center'>
		<tr>
		<td ><span><a href="addAvailableStock.jsp"><button>ADD DETAILS</button></a></span></td><br>
		<td ><span><a href="AdminFirst.jsp"><button>BACK</button></a></span></td><br>
		</tr>
			<table class="table">
			
				<thead>
					<tr>
					
						<th>DISHNAME</th>
						<th>DISHID</th>
						<th>QUANTITY LEFT</th>
						<th>MODIFY</th>
						<th>REMOVE</th>
						
					</tr>
				</thead>
				


<% 	
List<AvailableStock> details=availableStockDao.findAllRecord();
Iterator<AvailableStock> itr = details.iterator();
	while(itr.hasNext())
	{
		AvailableStock availableStock=itr.next();	
%>
	<tbody>
	<tr>
	<td data-label="DISHNAME" ><%=availableStock.getDishName()%></td>
	<td data-label="DISHID" ><%=availableStock.getDishId()%></td>
	<td data-label="QUANTITY LEFT" ><%=availableStock.getQleft()%></td>
	<td><a href='modify.jsp'>modify</a></td>
	<td><a href='deleteAvailableStock.jsp?DishId=<%=availableStock.getDishId() %>'>remove</a></td>
		
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