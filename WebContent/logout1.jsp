<%@ page language="java"%>
<html>
<head>
<title></title>
<form>
<body>
<%
application.removeAttribute(session.getAttribute("uid").toString());
session.removeAttribute("uid");
session.invalidate();
%>
//<jsp:forward page="logout.jsp"/>
<jsp:forward page="login1.jsp"/><%
%>
</form>
 </body>
</html>