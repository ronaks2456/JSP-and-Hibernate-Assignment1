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
	int amount = Integer.parseInt(request.getParameter("amount"));
	String account = request.getParameter("account");
	String name = request.getParameter("name");
	//String pass = request.getParameter("pass");
	try {
		Class.forName("com.mysql.cj.jdbc.Driver");
		Connection conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/dxc", "root", "root");
		PreparedStatement stmt = conn.prepareStatement("update user set account= ? , amount= ? where name=?");
		stmt.setString(1, account);
		stmt.setInt(2, amount);
		stmt.setString(3, name);
		//stmt.setString(4, pass);
		int i = stmt.executeUpdate();
		if (i > 0) {
			out.println("Saved into database");
			out.println("<html><body>");
			out.println("<a href='home.html'>Home</a>");
			out.println("</body></html>");
			out.println("<html><body>");
			out.println("<a href='record.jsp'>Record</a>");
			out.println("</body></html>");
			
		}
		else
		{
			out.println("Check again");
		}
		

	} catch (ClassNotFoundException ex) {
		ex.printStackTrace();
	} catch (SQLException ex) {
		ex.printStackTrace();
	}
	%>
</body>
</html>