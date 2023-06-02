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
	String name = request.getParameter("name");
	String pass = request.getParameter("pass");
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dxc", "root", "root");
		PreparedStatement stat = conn.prepareStatement("select name from user where name=? and pass =?");
		stat.setString(1, name);
		stat.setString(2, pass);
		ResultSet rs = stat.executeQuery();
		if (rs.next()) {
	%>
	<jsp:forward page="logSuccess.jsp" />
	<%
	} else {
	%>
	<jsp:forward page="error.jsp" />
	<%
	}
	} catch (ClassNotFoundException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	} catch (SQLException e) {
	// TODO Auto-generated catch block
	e.printStackTrace();
	}
	%>
</body>
</html>