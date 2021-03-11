<%@page import="dao.ReservationDao"%>

<%
String email1 =request.getParameter("Email");
ReservationDao reserveDao=new ReservationDao();
	Integer i= reserveDao.deleteRecord(email1);
	
	if(i>0)
	response.sendRedirect("AllReservation.jsp");
	
%>