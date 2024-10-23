<html>
 <head> 
  <link href='../CSS/style.css' rel='stylesheet'>
 </head>
 <body>
  <form action="authenticate-user.jsp" method="post">
   <table class="ta" cellpadding="15px">
    <tr>
     <td>Enter your id:</td>
     <%
     String uid=request.getParameter("userid");
     %>
     <td><input type="text" value="<%=uid==null?"":uid%>" name="userid" class="tb" style="height:2.5vw" required></td>
    </tr>
    <tr>
     <td>Enter your password:</td>
     <td><input type="password" name="password" class="tb" style="height:2.5vw" required></td>
    </tr>
    <tr>
     <td colspan="2" align="right">
      <button class="btr" style="background-color:black">Submit</button>
     </td>
    </tr>
   </table>
  </form>
 </body>
</html>
