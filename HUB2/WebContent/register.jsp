<%@page import="java.sql.*"%>
<%@page import="dao.CustomerDetailsDao"%>
<%@page import="model.CustomerDetails" %>
<%@page import="java.io.*"%>

<%

try
{
	String firstName = request.getParameter("firstName");
	String lastName = request.getParameter("lastName");
	String email = request.getParameter("email");
	String mobile = request.getParameter("mobile");
	String address = request.getParameter("address");
	String city = request.getParameter("city");
	String state = request.getParameter("state");
	Integer pincode = Integer.parseInt(request.getParameter("pincode"));
	String password = request.getParameter("password");
	
	CustomerDetails customerDetails=new CustomerDetails();
	
	customerDetails.setFirstName(firstName);
	customerDetails.setLastName(lastName);
	customerDetails.setEmail(email);
	customerDetails.setMobile(mobile);
	customerDetails.setAddress(address);
	customerDetails.setCity(city);
	customerDetails.setState(state);
	customerDetails.setPincode(pincode);
	customerDetails.setPassword(password);
	
	
		CustomerDetailsDao customerDetailsDao=new CustomerDetailsDao();
		Integer i=customerDetailsDao.registerRecord(customerDetails);
		
	}
	catch(Exception e){
	out.println(e);
	}

%>