<%@page import="java.util.*" %>
    <%@page import="java.sql.*" %>
<html>
<head>
<link href="//maxcdn.bootstrapcdn.com/font-awesome/4.3.0/css/font-awesome.min.css" rel="stylesheet">
<link rel="stylesheet" type="text/css" href="table.css">
<style>
body{
background-color:#DAD3CC;
}
</style>
</head>
<body>
<div class="table-container">
		<h1 class="heading"><center>CardDetails Table</center></h1>
<span><a href="AdminFirst.jsp"><button>BACK</button></a></span><br>
			<table class="table">
				<thead>
					<tr>
					
						<th>HOLDER-NAME</th>
						<th>ACCOUNT NUMBER</th>
						<th>EXPIRY MONTH</th>
						<th>EXPIRY YEAR</th>
						
					</tr>
				</thead>
<% 
try {
	Class.forName("com.mysql.jdbc.Driver");
	Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/online_food_management","root","root");
	Statement st =con.createStatement();
    String sql="Select* from payment";
	ResultSet rs = st.executeQuery(sql);
	while(rs.next()){
	String holder_name = rs.getString("holder_name");
	String account_num = rs.getString("account_num");
	String exp_month=rs.getString("exp_month");
	int exp_year=Integer.parseInt(rs.getString("exp_year"));
%>

				<tbody>
	<tr>
	<td data-label="HOLDER-NAME" ><%=holder_name%></td>
	<td data-label="ACCOUNT NUMBER"><%=account_num%></td>
	<td data-label="EXPIRY MONTH"><%=exp_month%></td>
	<td data-label="EXPIRY YEAR"><%=exp_year%></td>
	</tr>
	</tbody>

<% 
}
}
catch(Exception e)
{
	out.println(e);
	}
%>
	</table>
	</div>
</body>
</html>