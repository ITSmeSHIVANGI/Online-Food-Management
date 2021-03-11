<%@page import="model.CustomerDetails" %>
<%@page import="dao.CustomerDetailsDao" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<%
   CustomerDetails cust=new CustomerDetails();
   session.setAttribute("firstName",cust.setFirstName(firstName));
   out.println("<a href='update.jsp?firstName="+cust.getFirstName()+"&lastName="+cust.getLastName()+"&email="+cust.getEmail()+"&mobile="+cust.getMobile()+"&address="+cust.getAddress()+"&city="+cust.getCity()+"&state="+cust.getState()+"&pincode="+cust.getPincode()+"&password="+cust.getPassword()+"'>Update</a>");

%>
</body>
</html>