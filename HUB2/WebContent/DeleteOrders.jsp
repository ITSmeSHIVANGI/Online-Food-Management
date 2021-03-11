<%@page import="dao.OrderDao"%>

<%
	String Email=request.getParameter("Email");
	OrderDao ordersDao=new OrderDao();
	Integer i=ordersDao.deleteOrders(Email);
	
	if(i>0)
	response.sendRedirect("AllOrders.jsp");
	
%>