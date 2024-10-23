<%
if(session.getAttribute("adminid")==null)
{
	response.sendRedirect("login.jsp");
	return;
}
%>
<html>
 <head> 
  <script src="../JS/script.js"></script> 
  <link href='../CSS/style.css' rel='stylesheet'>
  <link href='../CSS/bootstrap.min.css' rel='stylesheet'>
 </head>
 <body bgcolor='cyan'>
   <hr style='border:2px solid green'>
    <nav class='navbar navbar-expand navbar-light bg-light'>
     <ul class='nav nav-pills mx-auto'>
      <li><a id="home" class='nav-link lau' href='admin'>Home</a>
      <li><a id="add" class='nav-link lau' href='employee/dashboard.jsp'>Employee dash board</a>
      <li><a id="out" class='nav-link lau' href=''>Edit time out</a>
      <li><a id="out" class='nav-link lau' href=''>Edit time in</a>
      <li><a id="out" class='nav-link lau' href='user/dashboard.jsp'>Manage user account</a>
      <li><a id="out" class='nav-link lau' href='logout.jsp'>Logout</a>
     </ul>
    </nav>
   <hr style='border:2px solid green'>
 </body>
</html>