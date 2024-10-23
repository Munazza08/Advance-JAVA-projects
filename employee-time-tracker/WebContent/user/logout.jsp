<html>
<head> 
  <link href='../CSS/style.css' rel='stylesheet'>
 </head>
 <body>
  <div class='dv'>
   <label class='lah' style='color:red'>Hi <%=session.getAttribute("name")%>, you have been logged out successfully</label>
   <%
   session.invalidate();
   %>
   <br><br>
   <a href='login.jsp'>Click</a> here to re login
  </div>
 </body>
</html>