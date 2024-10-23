<%@page import="java.time.LocalDate"%>
<%@ include file='../navbar.jsp' %>
<html>
 <body onload='makeActive("emp")'>
  <%
  String dt1=request.getParameter("date1");
  String dt2=request.getParameter("date2");
  LocalDate date1=LocalDate.parse(dt1);
  LocalDate date2=LocalDate.parse(dt2);
  String eid=request.getParameter("eid");
  PreparedStatement ps=(PreparedStatement)application.getAttribute("datebetween1");
  ps.setObject(1,date1);
  ps.setObject(2,date2);
  ps.setString(3,eid);
  ResultSet rst=ps.executeQuery();
  %>
  <div class='dvv'>
     <label class='hdu'>Report of date between <%=dt1%> and <%=dt2%> of employee <%=eid%></label>
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