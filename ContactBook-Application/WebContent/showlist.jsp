<%@page import="java.sql.*" %>
<%@include file="menu.html" %>
<%@include file="conn.jsp" %>

<html>
  <body>
    
    <%
    Statement st=cn.createStatement();
    ResultSet rst=st.executeQuery("Select * from contactinfo");
    %>
    <table class="table" style="margin-top:40px; background-color: #C96868; color:white;">
     <thead>
      <tr>
       <th scope="col">Contact Id</th>
       <th scope="col">First Name</th>
       <th scope="col">Last Name</th>
       <th scope="col">Address</th>
       <th scope="col">EmailId</th>
       <th scope="col">Phone Number</th>
      </tr>
     </thead>
     <tbody>
     <% 
     while(rst.next())
       {
    	 %>
         <tr>
         <td><%=rst.getString(1)%></td>
         <td><%=rst.getString(2)%></td>
         <td><%=rst.getString(3)%></td>
         <td><%=rst.getString(4)%></td>
         <td><%=rst.getString(5)%></td>
         <td><%=rst.getString(6)%></td>
         </tr>
         <%
        }
        %>
      </tbody>
     </table>
  </body>
</html>