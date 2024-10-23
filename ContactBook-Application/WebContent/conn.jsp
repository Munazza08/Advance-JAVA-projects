<%@page import="java.sql.*" %>

<%
Class.forName("com.mysql.cj.jdbc.Driver");
Connection cn=DriverManager.getConnection("jdbc:mysql://localhost/jsp1","root","mysql");
%>