<%@page import="com.employee.TimeFinder"%>
<%@page import="java.time.*"%>
<%@ include file="../navbar.jsp" %>
<html>
 <body onload="makeActive('out')">
  <%
  PreparedStatement ps=(PreparedStatement)application.getAttribute("outinsert");
  ps.setString(1,request.getParameter("eid"));
  String time=TimeFinder.getCurrentTime();
  ps.setString(2,time);
  ps.setString(3,"Not in yet");
  ps.setString(4,"Not applicable");
  LocalDate date=LocalDate.now();
  ps.setObject(5,date);
  ps.executeUpdate();
  PreparedStatement ps1=(PreparedStatement)application.getAttribute("statusupdate");
  ps1.setString(1,"out");
  ps1.setString(2,request.getParameter("eid"));
  ps1.executeUpdate();
  %>
  <div class='dv'>
   <label class='lah' style='color:green'>Employee out time has been recorded</label>
  </div>
 </body>
</html>