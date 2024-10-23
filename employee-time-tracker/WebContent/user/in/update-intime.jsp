<%@page import="com.employee.TimeFinder"%>
<%@page import="java.time.*"%>
<%@ include file="../navbar.jsp" %>
<html>
 <body onload="makeActive('in')">
  <%
  String eid=request.getParameter("eid");
  PreparedStatement ps1=(PreparedStatement)application.getAttribute("outtime");
  ps1.setString(1,"Not in yet");
  ps1.setString(2,eid);
  ResultSet rst=ps1.executeQuery();
  rst.next();
  String outtime=rst.getString(1);
  PreparedStatement ps=(PreparedStatement)application.getAttribute("intimeupdate");
  String intime=TimeFinder.getCurrentTime();
  String total=TimeFinder.getTotalTime(intime,outtime);
  ps.setString(1,intime);
  ps.setString(2,total);
  ps.setString(3,"Not in yet");
  ps.setObject(4,eid);
  ps.executeUpdate();
  PreparedStatement ps2=(PreparedStatement)application.getAttribute("statusupdate");
  ps2.setString(1,"in");
  ps2.setString(2,eid);
  ps2.executeUpdate();
  %>
  <div class='dv'>
   <label class='lah' style='color:green'>Employee in time has been updated</label>
  </div>
 </body>
</html>