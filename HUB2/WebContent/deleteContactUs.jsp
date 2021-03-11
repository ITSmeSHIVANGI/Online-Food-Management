<%@page import="dao.ContactUsDao"%>

<%
    
           String Email=request.getParameter("Email");
          ContactUsDao  contactUsDao = new  ContactUsDao();
          Integer i =  contactUsDao.deleteRecord(Email);

if(i>0)
response.sendRedirect("AllContactUs.jsp");

      
      
    	
          
    	
%>
