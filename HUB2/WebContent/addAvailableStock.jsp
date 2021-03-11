<%@page import="dao.AvailableStockDao"%>
<%@page import="model.AvailableStock"%>

<html>
<head>
<link rel="stylesheet" type="text/css" href="design.css">
</head>
<body>
<body>
<center><h1>Add Record</h1></center>
<center><form method="post">
<b>Dish Name:</b><input type="text" name="DishName" placeholder="DishName" style="margin-bottom:20px; margin-left:30px; margin-top:20px; padding:10px 30px 10px 30px;"><br>
<b>Dish Id:</b><input type="number" name="DishId" placeholder="DishId" style="margin-bottom:20px;margin-left:63px;padding:10px 30px 10px 30px;"><br>
<b>Quantity left:</b><input type="number" name="Qleft" placeholder="QuantityLeft" style="margin-bottom:20px;margin-left:44px;padding:10px 30px 10px 30px;"><br>
<input type = "submit" value="AddRecord" style="padding:10px;margin-left:18vh;"><br><br>
<input type = "submit" value="BACK"  formaction="availableStock.jsp" style="padding:10px;margin-left:18vh;" >
</form>
</center>
</body>
</html>


<%

    if(request.getMethod().equals("POST"))
    {
    	 String DishName =request.getParameter("DishName");
    	Integer DishId = Integer.parseInt(request.getParameter("DishId"));
         Integer Qleft = Integer.parseInt(request.getParameter("Qleft"));
         
         
         AvailableStock availableStock = new AvailableStock();
         availableStock.setDishName(DishName);
         availableStock.setDishId(DishId);
         availableStock.setQleft(Qleft);


          AvailableStockDao availableStockDao = new AvailableStockDao();
             Integer i = availableStockDao.addRecord(availableStock);
             out.println(i+"RECORD ADDED SUCCESSFULLY");
 
    }
    else
    {}
    	
%>
