<%@page import="java.sql.*"%>
<%
PreparedStatement ps=(PreparedStatement)application.getAttribute("update");
ps.setString(1,request.getParameter("firstname"));
ps.setString(2,request.getParameter("lastname"));
ps.setString(3,request.getParameter("phone"));
ps.setString(4,request.getParameter("email"));
ps.setString(5,request.getParameter("department"));
ps.setString(6,request.getParameter("salary"));
ps.setString(7,request.getParameter("eid"));
ps.executeUpdate();
response.sendRedirect("dashboard.jsp");
%>