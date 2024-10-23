<%@page import="java.sql.*"%>
<%
String uid=request.getParameter("userid");
PreparedStatement ps1=(PreparedStatement)application.getAttribute("usearch");
ps1.setString(1,uid);
ResultSet rst=ps1.executeQuery();
if(rst.next())
{
	%>
	<jsp:include page="add.jsp" />
	<div class='dvv'>
	 <label style='color:red'>User with id <%=uid%> already exists</label> 
	</div>
	<%
	return;
}
PreparedStatement ps=(PreparedStatement)application.getAttribute("usave");
ps.setString(1,uid);
ps.setString(2,request.getParameter("password"));
ps.setString(3,request.getParameter("name"));
ps.setString(4,request.getParameter("phone"));
ps.executeUpdate();
response.sendRedirect("dashboard.jsp");
%>