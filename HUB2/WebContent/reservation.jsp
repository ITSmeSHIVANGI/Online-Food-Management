<%@page import="dao.ReservationDao"%>
<%@page import="model.Reservation" %>
<!Doctype html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link rel="stylesheet" href="reserve.css" type="text/css">
<script type="text/javascript" src="jquery.js"></script>
</head>
<body>
   <section class="banner">
      <h2>BOOK YOUR TABLE NOW</h2>
<span><a href="index.jsp" style="color:black;background:yellow;text-decoration:none;padding:10px;">BACK</a></span><br>
      <div class="card-container">
         <div class="card-img">
            
         </div>
         <div class="card-content">
            <h3>Reservation</h3>
            <form method="post">
               <div class="form-row">
                   <input type="text" placeholder="Full Name" name="Name">
                   <input type="text" placeholder="Mobile No" name="Mobile">
               </div>
               <div class="form-row">
                   <input type="text" placeholder="E-mail" name="Email">
                </div>
               <div class="form-row">
                  <%-- <select name="days">
                     <option value="day-select">Select Day</option>
                     <option value="sunday">Sunday</option>
                     <option value="monday">Monday</option>
                     <option value="tuesday">Tuesday</option>
                     <option value="wednesday">Wednesday</option>
                     <option value="thursday">Thursday</option>
                     <option value="friday">Friday</option>
                     <option value="saturday">Saturday</option>
                  </select> --%>
                  <%--<input type="date" name="Date"> --%>
                  <input type="date" name="Date">
                  <%-- <select name="hours">
                     <option value="hour-select">Select Hour</option>
                     <option value="10">10:00</option>
                     <option value="12">12:00</option>
                     <option value="14">14:00</option>
                     <option value="hour-select">16:00</option>
                     <option value="hour-select">18:00</option>
                     <option value="hour-select">20:00</option>
                     <option value="hour-select">22:00</option>
                     
                  </select> --%>
              <%--    <input type="time" name="Time">--%>
                  <input type="time" name="Time">
                </div>
                
                
                
                <div class="form-row">
                   <input type="number" placeholder="How Many Persons?" min="1" name="NumberOfPeople">
                   <input type="submit" value="BOOK TABLE" onclick="greet()">
                </div>
            </form>
         </div>
      </div>
   </section>
</body>
</html>




<%
if(request.getMethod().equals("POST"))
{

   String name1 = request.getParameter("Name");
   String mobile1 = request.getParameter("Mobile");
   String email1 =request.getParameter("Email");
   String date1 =request.getParameter("Date");
   String time1 =request.getParameter("Time");
   Integer numberOfPeople1 = Integer.parseInt(request.getParameter("NumberOfPeople"));

Reservation reserve = new Reservation();
reserve.setName(name1);
reserve.setMobile(mobile1);

reserve.setEmail(email1);
reserve.setDate(date1);

reserve.setTime(time1);
reserve.setNumberOfPeople(numberOfPeople1);
try 
{
ReservationDao reserveDao = new ReservationDao(); 
Integer i=reserveDao.addRecord(reserve);
out.println("Your "+i+" Table is reserved!!!");
}
catch(Exception e) {
	out.println(e);
}
out.println("<a href='index.jsp'>HOME</a> | ");
}
%> 