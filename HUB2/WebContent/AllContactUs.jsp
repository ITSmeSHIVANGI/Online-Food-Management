<%@page import="dao.ContactUsDao"%>
<%@page import="model.ContactUs"%>
<%@page import="java.util.List" %>
<%@page import="java.util.Iterator" %>


<html>
<head>
<link rel="stylesheet" type="text/css" href="table.css">
</head>
<body>

<%

       ContactUsDao contactUsDao = new ContactUsDao();
  
%>
	<div class="table-container">
		<h1 class="heading"><center>CONTACT US TABLE</center></h1>
		<td colspan='2' align='center'>
		<tr>
		
		<td ><span><a href="AdminFirst.jsp"><button>BACK</button></a></span></td><br>
		</tr>
			<table class="table">
			
				<thead>
					<tr>
					
						<th>FULLNAME</th>
						<th>EMAIL</th>
						<th>MESSAGE</th>
						<th>RESPONSE</th>
						<th>REMOVE</th>
						
					</tr>
				</thead>


<% 	
List< ContactUs> details= contactUsDao.findAllRecord();
Iterator<ContactUs> itr = details.iterator();
	while(itr.hasNext())
	{
		ContactUs contactUs=itr.next();	
%>
	<tbody>
	<tr>
	<td data-label="FULLNAME" ><%=contactUs.getFullName()%></td>
	<td data-label="EMAIL" ><%=contactUs.getEmail()%></td>
	<td data-label="MESSAGE" ><%=contactUs.getMessage()%></td>
	<td data-label="RESPONSE" ><a href="response.jsp?Email=<%=contactUs.getEmail()%>">Response</a></td>
	<td><a href='deleteContactUs.jsp?Email=<%=contactUs.getEmail() %>'>remove</a></td>
		
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