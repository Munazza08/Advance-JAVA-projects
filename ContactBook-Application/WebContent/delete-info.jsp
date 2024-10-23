<%@page import="java.sql.*"%>
<%@include file="conn.jsp"%>

<html>
<body>
	<jsp:include page="delete.jsp" />
	<div>
		<%
			String cid = request.getParameter("cid");
			PreparedStatement ps = cn.prepareStatement("delete from contactinfo where cid=?");
			ps.setString(1, cid);
			int n = ps.executeUpdate();
			if (n >= 1) {
		%>
		<h2 class="animate__animated animate__bounceInDown"
			style="animation-duration: 6s; color: white; font-size: 50px; text-align: center; background-color: #C96868; padding: 10px 20px; margin: 0px 20px;">
			Product with Contact Id=<%=cid%>
			has been deleted.
		</h2>
		<%
			} else {
		%>
		<h2 class="animate__animated animate__bounceIn"
			style="animation-duration: 6s; color: white; font-size: 50px; text-align: center; background-color: #C96868; padding: 10px 20px; margin: 0px 20px;">
			Product with Contact Id=<%=cid%> does not exist.
		</h2>
		
		<%
			}
		%>

	</div>
</body>
</html>