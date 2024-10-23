<%@page import="java.sql.*"%>
<%@include file="conn.jsp"%>

<html>
  <head>
    <link rel="stylesheet" type="text/css" href="./css/insertStyle.css">
  </head>
  <body>
    <%
			String cid = request.getParameter("cid");
			PreparedStatement ps = cn.prepareStatement("select * from contactinfo where cid=?");
			ps.setString(1, cid);
			ResultSet rst=ps.executeQuery();
			if(rst.next())
			{
				%>
				<%@include file="menu.html"%>
				<form action="update-info.jsp">
				  <table class="table2" border="1" style="margin:auto; padding:5px;">
				    <tr style="background-color:white; font-size:23px; color: #C96868;">
				      <th colspan="2">Contact Information</th>
				    </tr>
				    <tr>
				      <th align="left">Contact Id</th>
				      <td><input type="text" value="<%=rst.getString(1)%>" name="cid" readonly="readonly" style="width:100%;"></td>
				    </tr>
				    <tr>
				      <th align="left">Edit First Name</th>
				      <td><input type="text" value="<%=rst.getString(2)%>" name="first_name" style="width:100%;"></td>
				    </tr>
				    <tr>
				      <th align="left">Edit Last Name</th>
				      <td><input type="text" value="<%=rst.getString(3)%>" name="last_name" style="width:100%;"></td>
				    </tr>
				    <tr>
				      <th align="left">Edit Address</th>
				      <td><input type="text" value="<%=rst.getString(4)%>" name="address" style="width:100%;"></td>
				    </tr>
				    <tr>
				      <th align="left">Edit Email Id</th>
				      <td><input type="text" value="<%=rst.getString(5)%>" name="emailid" style="width:100%;"></td>
				    </tr>
				    <tr>
				      <th align="left">Edit Phone Number</th>
				      <td><input type="text" value="<%=rst.getString(6)%>" name="phoneno" style="width:100%;"></td>
				    </tr>
				    <tr>
				      <td colspan="2" align="right">
				       <button class="bt">Update Info</button> 
				      </td>
				    </tr>
				   </table>
				  </form>
			  <%
			}
			else
			{
				%>
				<jsp:include page="edit.jsp" />
				<div>
				  <h2 class="animate__animated animate__bounceIn"
			        style="animation-duration: 6s; color: white; font-size: 50px; text-align: center; background-color: #C96868; padding: 10px 20px; margin: 0px 20px;">
			        Product with Contact Id=<%=cid%> not found.
		          </h2>
				</div>
				<%
			}
			%>
  </body>
</html>