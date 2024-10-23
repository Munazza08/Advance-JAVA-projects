<%@page import="java.sql.*"%>
<html>
 <%@ include file="add-css.jsp" %>
 <body>
 <%
 PreparedStatement ps=(PreparedStatement)application.getAttribute("search");
 ps.setString(1,request.getParameter("eid"));
 ResultSet rst=ps.executeQuery();
 rst.next();
 %>
 <div class='dvv'>
   <label class='lah'>Edit Employee Form</label>
  </div>
  <div class='container'>
   <div class='card col-md-10 mx-auto'>
    <div class='card-body'>
    <form action="update.jsp">
    <div class='row'>
      <div class='form-group col-md-10'>
      	<label for='eid' class='la'>Employee id</label>
      	<input class='form-control' readonly value="<%=rst.getString(1)%>" type='text' id='eid' name='eid' required>
      </div>
     </div> 
     <div class='row'>
      <div class='form-group col-md-5'>
      	<label for='firstname' class='la'>Edit first name</label>
      	<input class='form-control' value="<%=rst.getString(2)%>" type='text' id='firstname' name='firstname' required>
      </div>
      <div class='form-group col-md-5'>
      	<label for='lastname' class='la'>Edit last name</label>
      	<input class='form-control' value="<%=rst.getString(3)%>" type='text' id='lastname' name='lastname' required>
      </div>
     </div>
     <div class='row'>
      <div class='form-group col-md-5'>
      	<label for='phone' class='la'>Edit phone number</label>
      	<input class='form-control' value="<%=rst.getString(4)%>" type='text' id='phone' name='phone' required>
      </div>
      <div class='form-group col-md-5'>
      	<label for='email' class='la'>Edit email id</label>
       	<input class='form-control' value="<%=rst.getString(5)%>" type='text' id='email' name='email' required>
      </div>
     </div>
     <div class='row'>
      <div class='form-group col-md-5'>
      	<label for='department' class='la'>Change department</label>
      	<input class='form-control' value="<%=rst.getString(6)%>" type='text' id='department' name='department' required>
      </div>
      <div class='form-group col-md-5'>
      	<label for='salary' class='la'>Edit salary</label>
      	<input class='form-control' value="<%=rst.getString(7)%>" type='text' id='salary' name='salary' required>
      </div>
     </div>
     <div class='row'>
      <div class='form-group col-md-10'>
       <button class='btn btn-primary'>update Record</button>
       <input type="button"  class='btn btn-secondary'  onclick='history.back()' value="Cancel">
      </div>
     </div> 
     </form>
    </div>
   </div>
  </div>
 </body>
</html>