<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
	out.println("Login Sucessful");
	out.println("<html><body>");
	out.println("<form action='amount.jsp'>");
	out.println(
			"<tr><td><label for='account'>Account.no:</label><input type='text' id='account' name='account'/></tr></td>");
	out.println("<tr><td><label for='amount'>Amount:</label><input type='text' id='amount' name='amount'/></tr></td>");
	out.println("<label for='name'>Name:</label><input type='text' id='name' name='name' /></td></tr><tr><td><label for='pass'>Password:</label><input type='password' id='pass' name='pass' />");
	out.println("<input type='submit' value='submit'>");
	out.println("</form>");
	out.println("</html></body>");
	%>
</body>
</html>