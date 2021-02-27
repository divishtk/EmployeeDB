<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Employee Page</title>
</head>
<style>
html, body {
	height: 100%;
}

html {
	display: table;
	margin: auto;
}

body {
	display: table-cell;
	horizontal-align: middle;
}
</style>
<body>
	<table cellspacing=4 cellpadding=4 border=1>
		<caption>
			<h3>Display Employee Details</h3>
		</caption>
		<tr>
			<th align=left>Employee Code</th>
			<th align=left>Employee Name</th>
			<th align=left>Unit Of Sales</th>
			<th align=left>Salary</th>
			<th align=left>Total Salary</th>

		</tr>
		<%  
            	Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employeedb", "root", "admin123");
	            PreparedStatement stmt=con.prepareStatement("select * from details");  
	            ResultSet rs=stmt.executeQuery();
                while(rs.next())
                {
            %>
		<tr>
			<td><%=rs.getString("code")%></td>

			<td><%=rs.getString("name")%></td>
			<td><%=rs.getString("unit_sales")%></td>
			<td><%=rs.getString("sal")%></td>
			<td><%=rs.getString("Total_sal")%> <% } %></td>
		</tr>
	</table>
			<br>
			<h4>
				<center>Click Here for&nbsp; <a href=form.jsp>Home Page.. </a></center>
			</h4>
</body>
</html>