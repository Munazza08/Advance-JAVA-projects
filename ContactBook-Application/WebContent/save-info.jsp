<%@page import="java.sql.*"%>
<%@include file="menu.html"%>
<%@include file="conn.jsp"%>

<%
	PreparedStatement ps = cn.prepareStatement("insert into contactinfo (first_name, last_name, address, emailid, phoneno) values(?,?,?,?,?)");
	ps.setString(1, request.getParameter("first_name"));
	ps.setString(2, request.getParameter("last_name"));
	ps.setString(3, request.getParameter("address"));
	ps.setString(4, request.getParameter("emailid"));
	ps.setString(5, request.getParameter("phoneno"));
	ps.executeUpdate();
%>
<html>
<head>
</head>
<body>
	<div>
		<h2 class="animate__animated animate__zoomIn animate__delay-10s"
			style="animation-duration: 4s; color: white; font-size: 50px; text-align: center; background-color: #C96868; padding: 10px 20px; margin: 0px 20px;">User
			Contact Information has been inserted successfully!</h2>
	</div>
</body>
</html>
