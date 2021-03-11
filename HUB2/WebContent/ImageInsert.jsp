<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset="ISO-8859-1">
<title>Jsp Page</title>
</head>
<body>
<form action="ImageInsert" method="post" enctype="multipart/form-data">
<table width="400px" align="center" border=2>
<tr>
<td align="center" colspan="2">Form Details</td>
</tr>
<tr>
<td>Number</td>
<td><input type="number" name="d_id"></td>
</tr>
<tr>
<td>Name</td>
<td><input type="text" name="d_name"></td>
</tr>
<tr>
<td>Price</td>
<td><input type="number" name="d_price"></td>
</tr>
<tr>
<td>category</td>
<td><input type="text" name="category"></td>
</tr>
<tr>
<td>ingredients</td>
<td><input type="text" name="ingredients"></td>
</tr>
<tr>
<td>Image Link</td>
<td><input type="file" name="file"></td>
</tr>
<tr>
<td>Submit</td>
<td><input type="submit" value="Submit"></td>
</tr>
</table>
</form>
</body>
</html>