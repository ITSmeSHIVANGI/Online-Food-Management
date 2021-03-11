<%@page import="dao.ContactUsDao"%>
<%@page import="model.ContactUs"%>
<%@page import="java.util.List" %>
<%@page import="java.util.Iterator" %>
<%
String Email=request.getParameter("Email");
%>
<html>
<head></head>
<body>
<form action="mail" method="post">
<table width="400px" align="center" border=2>
<tr>
<td align="center" colspan="2">Send Email</td>
</tr>
<tr>
<td>To:</td>
<td><input type="text" name="to" value=<%=Email%>></td>
</tr>
<tr>
<td>Subject:</td>
<td><input type="text" name="subject"></td>
</tr>
<tr>
<td>Message:</td>
<td><input type="text" name="message"></td>
</tr>
<tr>
<td>Your Email id:</td>
<td><input type="text" name="user"></td>
</tr>
<tr>
<td>Password</td>
<td><input type="password" name="pass"></td>
</tr>
<tr>
<td>Submit</td>
<td><input type="submit" value="Send"></td>
</tr>
</table>
</form>
</body>
</html>