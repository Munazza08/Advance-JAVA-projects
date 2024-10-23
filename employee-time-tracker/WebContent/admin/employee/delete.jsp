<%@page import="java.sql.PreparedStatement"%>
<%
PreparedStatement ps=(PreparedStatement)application.getAttribute("delete");
ps.setString(1,request.getParameter("eid"));
ps.executeUpdate();
response.sendRedirect("dashboard.jsp");
%>