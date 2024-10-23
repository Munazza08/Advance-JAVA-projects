<%@page import="java.sql.*"%>
<%
String uid=request.getParameter("userid");
String upass=request.getParameter("password");
PreparedStatement ps=(PreparedStatement) application.getAttribute("usearch");
ps.setString(1,uid);
ResultSet rst=ps.executeQuery();
if(!rst.next())
{%>
	<jsp:include page="login.jsp">
	 <jsp:param value="<%=uid%>" name="userid"/>
	</jsp:include>
	<div class='dvv'>
   		<label class='la' style="color:red">User id does not exist...</label>
  	 </div>
<% 
return;
}
String dpass=rst.getString(2);
if(!upass.equals(dpass))
{%>
	<jsp:include page="login.jsp">
	 <jsp:param value="<%=uid%>" name="userid"/>
	</jsp:include>
	<div class='dvv'>
		<label class='la' style="color:red">Password is wrong...</label>
	 </div>
<% 
return;
}
session.setAttribute("name",rst.getString(3));
response.sendRedirect("home.jsp");

%>