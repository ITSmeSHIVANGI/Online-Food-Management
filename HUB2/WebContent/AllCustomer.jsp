<%@page import="dao.CustomerDetailsDao"%>
<%@page import="java.util.List" %>
<%@page import="model.CustomerDetails" %>
<%@page import="java.util.Iterator" %>

<html>
<head>
<link rel="stylesheet" type="text/css" href="table.css">
</head>
<body>


<%

	CustomerDetailsDao customerDetailsDao=new CustomerDetailsDao();

%>
	<div class="table-container">
		<h1 class="heading"><center>CustomerDetails Table</center></h1>
			<table class="table">
				<thead>
					<tr>
					
						<th>FIRSTNAME</th>
						<th>LASTNAME</th>
						<th>E-mail</th>
						<th>MOBILE</th>
						<th>ADDRESS</th>
						<th>CITY</th>
						
						<th>STATE</th>
						<th>PINCODE</th>
						<th>REMOVE</th>
						
					</tr>
				</thead>


<% 	
List<CustomerDetails> details=customerDetailsDao.findAllRecord();
Iterator<CustomerDetails> itr = details.iterator();
	while(itr.hasNext())
	{
		CustomerDetails customerDetails=itr.next();	
%>
	<tbody>
	<tr>
	<td data-label="FIRSTNAME" ><%=customerDetails.getFirstName()%></td>
	<td data-label="LASTNAME"><%=customerDetails.getLastName()%></td>
	<td data-label="E-mail"><%= customerDetails.getEmail()%></td>
	<td data-label="MOBILE"><%= customerDetails.getMobile()%></td>
	<td data-label="ADDRESS"><%= customerDetails.getAddress()%></td>
	<td data-label="CITY"><%=customerDetails.getCity()%></td>
	<td data-label="STATE"><%=customerDetails.getState()%></td>
	<td data-label="PINCODE"><%=customerDetails.getPincode()%></td>
	
	<td><a href='DeleteCustomer.jsp?Email=<%=customerDetails.getEmail() %>'>remove</a></td>
<% 


	// out.println("<td ><span><a href='"DeleteCustomer.jsp?Email=<%=customerDetails.getEmail()'"><button>remove</button></a></span></td>"); 
%>


		
	</tr>
	</tbody>
	
	
	
<% 
	}
%>



	</table>
	<br>
	<span><a href="AdminFirst.jsp"><button>BACK</button></a></span><br>
	

</div>
</body>
</html>