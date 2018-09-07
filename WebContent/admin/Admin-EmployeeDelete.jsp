<%@ page import = "java.io.*,java.util.*,java.sql.*"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<script type="text/javascript">
function delete_row(id){
	alert(id);
}

</script>
<%

String DB_URL = "jdbc:mysql://localhost:3306/jobportal";
String USER = "root";
String PASS = "root";
//PrintWriter out=response.getWriter();
Connection conn = null;

    String recordToDelete = request.getParameter("event_id");
    System.out.println(""+recordToDelete);
	try
	{
    // Use PreparedStatements here instead of Statment
    Class.forName("com.mysql.jdbc.Driver");
		      conn = DriverManager.getConnection(DB_URL, USER, PASS);
		      Statement stmt = conn.createStatement();
		      
    int rs = stmt.executeUpdate("DELETE * FROM event where event_id="+ recordToDelete );

     response.sendRedirect("admin/Admin-Events.jsp"); // redirect to JSP one, which will again reload.
	}
	catch(SQLException se) {
	      se.printStackTrace();
	   }	
%>
</body>
</html>