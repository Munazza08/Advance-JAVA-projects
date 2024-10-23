<%@page import="java.sql.*"%>
<%
if(session.getAttribute("name")==null)
{
	response.sendRedirect("login.jsp");
	return;
}
%>
<html>
 <head> 
  <script src="/employee-time-tracker/JS/script.js"></script> 
  <link href='/employee-time-tracker/CSS/style.css' rel='stylesheet'>
  <link href='/employee-time-tracker/CSS/bootstrap.min.css' rel='stylesheet'>
 </head>
 <body bgcolor='cyan'>
   <hr style='border:2px solid green'>
    <nav class='navbar navbar-expand navbar-light bg-light'>
     <ul class='nav nav-pills mx-auto'>
      <li><a class='nav-link lau'>Hi, <%=session.getAttribute("name")%></a></li> 
      <li><a id="home" class='nav-link lau' href='/employee-time-tracker/user/home.jsp'>Home</a>
      <li><a id="out" class='nav-link lau' href='/employee-time-tracker/user/out/employee-list.jsp'>Record time out</a>
      <li><a id="in" class='nav-link lau' href='/employee-time-tracker/user/in/employee-list.jsp'>Update time in</a>
      <li><a id="date" class='nav-link lau' href='/employee-time-tracker/user/datewise/choose-date.jsp'>Date wise report</a>
      <li><a id="emp" class='nav-link lau' href='/employee-time-tracker/user/empwise/employee-list.jsp'>Employee wise report</a>
      <li><a id="out" class='nav-link lau' href='logout.jsp'>Logout</a>
     </ul>
    </nav>
   <hr style='border:2px solid green'>
 </body>
</html>