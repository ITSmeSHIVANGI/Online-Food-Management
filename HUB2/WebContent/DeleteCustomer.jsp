<%@page import="dao.CustomerDetailsDao"%>

<%
	String Email=request.getParameter("Email");
	CustomerDetailsDao customerDetailsDao=new CustomerDetailsDao();
	Integer i=customerDetailsDao.deleteRecord(Email);
	
	if(i>0)
	response.sendRedirect("AllCustomer.jsp");
	
%>