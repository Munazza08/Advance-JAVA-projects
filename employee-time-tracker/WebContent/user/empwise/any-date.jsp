<%@page import="java.time.LocalDate"%>
<%@ include file='../navbar.jsp' %>
<html>
 <body onload='makeActive("emp")'>
  <%
  String eid=request.getParameter("eid");
  String dt=request.getParameter("date");
  LocalDate date=LocalDate.parse(dt);
  PreparedStatement ps=(PreparedStatement)application.getAttribute("anydate1");
  ps.setObject(1,date);
  ps.setObject(2,eid);
  ResultSet rst=ps.executeQuery();
  %>
  <div class='dvv'>
     <label class='hdu'>Report of date <%=dt%> of employee <span><%=eid%></span></label>
  </div>
  <div class='container'>
   <div class='card mx-auto'>
     <div class='card-body'>
      <%
      if(!rst.next())
      {
    	  %>
    	  <div class='dvv'>
     		<label class='la' style="color:red">No record</label>
  		  </div>
    	  <%
    	  return;
      }
      %>
      <div class='table scrollit'>
       <table class='table table-hover'>
        <thead>
         <tr>
          <th>S.No</th><th>Emp Id</th><th>Out Time</th><th>In Time</th><th>Total Time</th><th>Date</th>
         </tr> 
        </thead>
        <tbody>
        <%
        int sn=0;
        do
        {
        	%>
        	<tr> 
         	<td><%=++sn%></td>
         	<td><%=rst.getString(2)%></td>
         	<td><%=rst.getString(3)%></td>
         	<td><%=rst.getString(4)%></td>
         	<td><%=rst.getString(5)%></td>
         	<td><%=rst.getString(6)%></td>
           </tr>
        	<%
        }while(rst.next());
        %>
        </tbody>
       </table>
      </div>
     </div>
   </div> 
  </div>
  <div style='text-align: center;margin-top:10px'>
   <input type='button' value='Back' onclick='history.back()' class='btr' style='background-color:orange'>
  </div>
 </body>
</html>