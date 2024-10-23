<%@page import="java.sql.*"%>
<html>
 <%@ include file="add-css.jsp" %>
 <body>
  <%
      Statement st=(Statement)application.getAttribute("st");
      ResultSet rst=st.executeQuery("select * from employeeinfo");
  %>
  <div class='dvv'>
   <label class='lah'>Employee Dash board</label>
  </div>
  <div class='container'>
  <a href='add.jsp' class='la'><i class='fa fa-user-plus'></i>Add Employee</a>
   <div class='card col-md-12 mx-auto'>
    <div class='card-body'>
      <%
      if(!rst.next())
      {
         %><div class='dv'>
           <label class='la' style='color:red'>Employee dash board has no record</label>
         </div><%
      }else
      {
    	  %><table class='table table-hover'>
          <thead>
           <tr>
            <th>Employee id</th><th>First name</th><th>Last name</th>
            <th>Phone number</th><th>Email id</th><th>Department</th>
            <th>Salary</th><th style='color:blue'>Action</th>
           </tr>
          </thead>
          <tbody>
          <%
          do
          {
        	  String eid=rst.getString(1);
        	  %><tr>
        	   <td><%=eid%></td>
        	   <td><%=rst.getString(2)%></td>
        	   <td><%=rst.getString(3)%></td>
        	   <td><%=rst.getString(4)%></td>
        	   <td><%=rst.getString(5)%></td>
        	   <td><%=rst.getString(6)%></td>
        	   <td><%=rst.getString(7)%></td>
        	   <td>
        	    <a href="edit.jsp?eid=<%=eid%>">Edit |</a>
        	    <a href="delete.jsp?eid=<%=eid%>" onclick="return confirm('Are you sure to delete?')">Delete</a>
        	   </td>
        	  </tr><%
          }while(rst.next());
          %>
          </tbody>
         </table><%    	  
      }
     %>  
    </div>
   </div>
   <a href='/employee-time-tracker/admin/home.jsp' class='la'><i class='fa fa-home'></i>Home</a>
  </div>
 </body>
</html>