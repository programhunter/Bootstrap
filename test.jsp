<%@ page import="java.sql.*" %>
<html>
<head>
  <title>JDBC Connection example</title>
</head>

<body>
  <h1>JDBC Connection example</h1>

  <%
  String db = request.getParameter("register");

  try {
  java.sql.Connection con;
  Class.forName("org.gjt.mm.mysql.Driver");
  con = DriverManager.getConnection("jdbc:mysql://localhost:3036/"+db, "root", "okay");
  out.println (db+ "database successfully opened.");
}
catch(SQLException e) {
out.println("SQLException caught: " +e.getMessage());
}
%>

</body>
</html>