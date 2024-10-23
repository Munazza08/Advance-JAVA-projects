<%@page import="java.sql.*"%>
<html>
 <%@ include file="add-css.jsp" %>
 <body>
 <body>
  <%
      Statement st=(Statement)application.getAttribute("st");
      ResultSet rst=st.executeQuery("select * from userinfo");
  %>
  <div class='dvv'>
   <label class='lah'>User DashBaord</label>
  </div>
  <div class='container'>
  <a href='add.jsp' class='la'><i class='fa fa-user-plus'></i>Add User</a>
   <div class='card col-md-12 mx-auto'>
    <div class='card-body'>
      <%if(!rst.next()){%>
      <div class='dv'>
         <label class='la' style='color:red'>User dash board has no record</label>
       </div>
      <%}else{%>
     <table class='table table-hover'>
      <thead>
       <tr>
        <th>User id</th><th>User Password</th>
        <th>User Name</th><th>User Phone</th>
        <th style='color:blue'>Action</th>
       </tr>
      </thead>
      <tbody>
      <%do{
    	  String uid=rst.getString(1);
      %>
        <tr>
    	   <td><%=uid%></td>
    	   <td><%=rst.getString(2)%></td>
    	   <td><%=rst.getString(3)%></td>
    	   <td><%=rst.getString(4)%></td>
    	   <td>
    	      <a href='edit.jsp?uid=<%=uid%>' title='Click to edit this record'><i class='fa fa-user-edit'></i> |</a>
    	      <a href='delete.jsp?uid=<%=uid%>' title='Click to remove this record' onclick='return confirm("Are you sure to delete?")'><i class='fa fa-trash'></i> </a>
    	   </td>
    	  </tr>
    	<%}while(rst.next());%>  
      </tbody>
     </table>
     <%}%>
    </div>
   </div>
   <a href='/employee-time-tracker/admin/home.jsp' class='la'><i class='fa fa-home'></i>Home</a>
  </div>
 </body>
</html>