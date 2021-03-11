<%@page import="model.CustomerDetails" %>
<%@page import="dao.CustomerDetailsDao" %>


<%
   String email=request.getParameter("email");
   String password=request.getParameter("password");

   CustomerDetails customerDetails=new CustomerDetails();
   customerDetails.setEmail(email);
   customerDetails.setPassword(password);
   
   CustomerDetailsDao customerDetailsDao=new CustomerDetailsDao();
   Boolean b=customerDetailsDao.Validate(customerDetails);
   /*
   if(b==true)
   {
	   session.setAttribute("email",email);
	   response.sendRedirect("Welcome.jsp");
   }
   */
   if(b==true)
   {
	   session.setAttribute("firstName", customerDetails.getFirstName());
	   session.setAttribute("lastName", customerDetails.getLastName());
	   session.setAttribute("email", customerDetails.getEmail());
	   session.setAttribute("mobile", customerDetails.getMobile());
	   session.setAttribute("address", customerDetails.getAddress());
	   session.setAttribute("city", customerDetails.getCity());
	   session.setAttribute("state", customerDetails.getState());
	   session.setAttribute("pincode", customerDetails.getPincode());
	   session.setAttribute("password", customerDetails.getPassword());
	   response.sendRedirect("MenuAll.jsp");
   }
   else
   {
	   out.println("<h2>Please Check Your Username or Password...</h2>");
	   

   }
%>