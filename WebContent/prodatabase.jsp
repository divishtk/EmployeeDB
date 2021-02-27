<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*"%>
<%@page import="java.util.*"%>
<!DOCTYPE html>
<html>
<head>
<title>Employee Page</title>
</head>
<body>
	<%  
			
	        String empname;
	        int sal;
	        int unitsal;
	        String code;
	        double bonus = 0;


            code = request.getParameter("code");
            empname = request.getParameter("emp");
            sal = Integer.parseInt(request.getParameter("sal").toString());
            unitsal = Integer.parseInt(request.getParameter("sales").toString());

            if (unitsal < 500) {
                bonus = sal + (sal * (0.10));
            } 
            else if (unitsal >= 500 && unitsal < 1000)
            {
                bonus = sal + (sal * (0.15));
            } 
            else if (unitsal >= 1000) 
            {
                bonus = sal + (sal * (0.20));
            }
            
            
            try {
				Class.forName("com.mysql.cj.jdbc.Driver");
                Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/employeedb", "root", "admin123");
                PreparedStatement stmt=con.prepareStatement("insert into details values(?,?,?,?,?)");  
                stmt.setString(1, code);
                stmt.setString(2, empname);
                stmt.setInt(3, unitsal);
                stmt.setInt(4, sal);
                stmt.setDouble(5, bonus);
                
                int i=stmt.executeUpdate();  
                System.out.println(i+" records inserted");  
                  
                con.close();  
                

            } catch (Exception e) {
                System.out.print(e);
                e.printStackTrace();
            }
        %>
	<%
        response.sendRedirect("display.jsp");  
        %>
</body>
</html>