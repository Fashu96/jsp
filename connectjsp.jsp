<%@ page language="java" contentType="text/html; charset=utf-8"
    pageEncoding="utf-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=utf-8">
<title>one</title>
</head>
<body>
<%
    Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver").newInstance();
    String connetSQL = "jdbc:sqlserver://localhost:1431;DatabaseName=Day";

   Connection conn = java.sql.DriverManger.getConnection(connectSQL,"sa",""); 
   Statement stmt = conn.createStatement();
   ResultSet rs = stmt.executeQuery("select * from student");
    
    out.println("<table>");
    while(rs.next())
    {
    	out.println("<tr>");
    	out.println("<td>"+rs.getInt("id")+"</td>");
    	out.println("<td>"+rs.getString("name")+"</td>");
    	out.println("<td>"+rs.getInt("age")+"</td>");
    	out.println("<td>"+rs.getString("major")+"</td>");
    	out.println("</tr>");
   
    }
    out.println("</table>");
  
%>

</body>
</html>