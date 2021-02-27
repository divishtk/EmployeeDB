<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Employee JSP Page</title>
<meta charset="UTF-8">
<meta name="viewport" content="width=device-width, initial-scale=1.0">
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

	<form action="prodatabase.jsp" method="POST">
		<table cellspacing="4" cellpadding="4">
			<caption>
				<h3>Employee Details</h3>
			</caption>
			<tr>
				<th align="left">Employee Code :</th>
				<td><input type="text" name="code" /></td>
			</tr>
			<tr>
				<th align="left">Employee Name :</th>
				<td><input type="text" name="emp" /></td>
			</tr>
			<tr>
				<th align="left">Unit of Sales :</th>
				<td><input type="text" name="sales" /></td>
			</tr>
			<tr>
				<th align="left">Employee Salary :</th>
				<td><input type="text" name="sal" /></td>
			</tr>
			<tr>
				<td colspan="2" align="center"><br>
				<input type="submit" value="Calculate" /> &nbsp;&nbsp;&nbsp;&nbsp;</td>
			</tr>
		</table>
	</form>

				

</body>
</html>