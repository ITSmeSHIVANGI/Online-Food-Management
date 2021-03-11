<%@page import="dao.AvailableStockDao"%>

<%
    
    	Integer DishId = Integer.parseInt(request.getParameter("DishId"));
        AvailableStockDao availableStockDao = new AvailableStockDao();
        Integer i = availableStockDao.deleteRecord(DishId);
    	
             if(i>0)
            		response.sendRedirect("availableStock.jsp");
            		
    	
%>
