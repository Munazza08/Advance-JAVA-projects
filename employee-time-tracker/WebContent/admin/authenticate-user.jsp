<%
String aid=request.getParameter("adminid");
String pass=request.getParameter("pass");
if(aid.equals("admin") && pass.equals("cetpa"))
{
	session.setAttribute("adminid",aid);
	response.sendRedirect("home.jsp");
}
else
{
	%>
	<jsp:include page="login.jsp" />
	<div class='dvv'>
   		<label class='la' style="color:red">Authentication failed...</label>
  	 </div>
	<%
}
%>