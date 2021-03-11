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
		<h1 class="heading"><center>Requests of Reset Password</center></h1>
			<table class="table">
				<thead>
					<tr>
					
						
						<th>E-MAIL</th>
						
						<th>GENERATE LINK</th>
						
						
						<th>REMOVE</th>
						
					</tr>
				</thead>


<% 	
List<CustomerDetails> details=customerDetailsDao.findAllEmails();
Iterator<CustomerDetails> itr = details.iterator();
	while(itr.hasNext())
	{
		CustomerDetails customerDetails=itr.next();	
%>
	<tbody>
	<tr>
	
	<td data-label="E-mail"><%= customerDetails.getEmail()%></td>
	<td><a href='frgtpswdemail.jsp?Email=<%=customerDetails.getEmail() %>'>generate link</a></td>
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
