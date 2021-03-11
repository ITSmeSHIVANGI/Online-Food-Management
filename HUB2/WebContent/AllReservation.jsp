<%@page import="dao.ReservationDao"%>
<%@page import="model.Reservation"%>
<%@page import="java.util.List" %>
<%@page import="java.util.Iterator" %>


<html>
<head>
<link rel="stylesheet" type="text/css" href="table.css">
</head>
<body>

<%

      ReservationDao  reserveDao = new  ReservationDao();
  
%>
	<div class="table-container">
		<h1 class="heading"><center>RESERVATION TABLE</center></h1>
		<td colspan='2' align='center'>
		<td ><span><a href="AdminFirst.jsp"><button>BACK</button></a></span></td><br>
		
			<table class="table">
			
				<thead>
					<tr>
					
						<th>NAME</th>
						<th>MOBILE</th>
						<th>EMAIL</th>
						<th>DATE</th>
						<th>TIME</th>
						<th>NUMBEROFPEOPLE</th>
						
						<th>REMOVE</th>
						
					</tr>
				</thead>


<% 	
 List<Reservation> details= reserveDao.findAllRecord();
Iterator<Reservation> itr = details.iterator();
	while(itr.hasNext())
	{
		   Reservation reserve=itr.next();	
%>
	<tbody>
	<tr>
	<td data-label="NAME" ><%=reserve.getName()%></td>
	<td data-label="MOBILE" ><%=reserve.getMobile()%></td>
	<td data-label="EMAIL" ><%=reserve.getEmail()%></td>
	<td data-label="DATE" ><%=reserve.getDate()%></td>
	<td data-label="TIME" ><%=reserve.getTime()%></td>
	<td data-label="NUMBEROFPEOPLE" ><%=reserve.getNumberOfPeople()%></td>
	
	<td><a href='DeleteReservation.jsp?Email=<%=reserve.getEmail() %>'>remove</a></td>
		
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