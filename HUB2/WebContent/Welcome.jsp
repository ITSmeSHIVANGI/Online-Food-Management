


<%
   String firstName=(String)session.getAttribute("firstName");
   if(firstName!=null)
   {
%>
	   <h1>Welcome Page</h1>
	   <hr>

	   <h4>Welcome ::
	      <%=session.getAttribute("firstName") %>
	      <br><br>
	      <a href='update.jsp?firstName=<%=session.getAttribute("firstName")%>&lastName=<%=session.getAttribute("lastName")%>&email=<%=session.getAttribute("email")%>&mobile=<%=session.getAttribute("mobile")%>&address=<%=session.getAttribute("address")%>&city=<%=session.getAttribute("city")%>&state=<%=session.getAttribute("state")%>&pincode=<%=session.getAttribute("pincode")%>&password=<%=session.getAttribute("password")%>'>Update</a>
	      <br><br>
	      <a href="changepassword.jsp?email=<%=session.getAttribute("email")%>">Change Password</a><br><br>
	      <a href="logout.jsp">LogOut</a>

	      
	      </h4>
<% 
   }
   else{
%>
<jsp:include page="index.jsp">
   <jsp:param value="Hacking is bad thing, first login..." name="msg"/>
</jsp:include>
<%
   }
%>
