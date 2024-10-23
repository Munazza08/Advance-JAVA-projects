<html>
<head> 
  <link href='../CSS/style.css' rel='stylesheet'>
 </head>
 <body>
  <%
  session.invalidate();
  %>
  <div class='dv'>
   <label class='lah' style='color:red'>Hi admin, you have been logged out successfully</label>
   <br><br>
   <a href='login.jsp'>Click</a> here to re login
  </div>
 </body>
</html>