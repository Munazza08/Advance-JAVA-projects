<%@ include file="../navbar.jsp" %>
<html>
 <body onload="makeActive('emp')">
 <%
 Statement st=(Statement)application.getAttribute("st");
 ResultSet rst=st.executeQuery("select eid,firstname,lastname from employeeinfo");
 %>
 <form action="choose-date.jsp">
  <div class='dv'>
   <label class='hdu'>View employee wise report</label>
  </div>
  <div class='dv'>
   <select name="eid" id="eid" class='la' onchange="checkEmployee(this)">
   	 <option value="-1">Select Employee</option>
   	 <%
   	 while(rst.next())
   	 {
   		 String eid=rst.getString(1);
   		 %>
   		 <option value="<%=eid%>"><%=rst.getString(2)%> <%=rst.getString(3)%>(<%=eid%>)</option>
   		 <%
   	 }
   	 %>
   </select>
  </div>
  <div class='dv'>
   <button disabled id='bt' class='btn btn-primary'>Submit</button>
  </div>
  <div class='dvv' id='msg'>
  </div> 
 </form> 
 </body>
</html>