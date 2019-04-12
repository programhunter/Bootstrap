<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="java.util.ArrayList"%>
<%@ page import="java.sql.*" %>

<%  
  //initialize driver class
  try {    
    Class.forName("oracle.jdbc.driver.OracleDriver");
  } catch (Exception e) {
    out.println("Fail to initialize Oracle JDBC driver: " + e.toString() + "<P>");
  }
  
  String dbUser = "Student_Performance";
  String dbPasswd = "Student_Performance";
  String dbURL = "jdbc:oracle:thin:@localhost:1521:XE";
  //connect
  Connection conn = null;
  try {
    conn = DriverManager.getConnection(dbURL,dbUser,dbPasswd);
    //out.println(" Connection status: " + conn + "<P>");
  } catch(Exception e) {
    out.println("Connection failed: " + e.toString() + "<P>");      
  }
  String sql;
  int numRowsAffected;
  Statement stmt = conn.createStatement();
  ResultSet rs;
  
  String moduleName = request.getParameter("modName");
  String modCategory = request.getParameter("cat"); 
  String streamName= request.getParameter("streamName");
  int id = Integer.parseInt(request.getParameter("moduleId"));
  String streamId="hi";
  out.println(modCategory);
  out.println(streamName);
  out.println(id);
  out.println(moduleName);
  //insert
  
  
  
   try {
           sql = "select stream_id from stream where stream_name = '" + streamName + "'";
           rs = stmt.executeQuery(sql);
           while (rs.next()) {
               streamId =rs.getString("stream_id");
               //out.println("User Id = " + rs.getString("user_id") + "<BR>"); 
           } // End while 
           out.println(streamId);
           

       } catch (SQLException e) {
           out.println("Error encountered during row select for users: " + e.toString() + "<BR>");
       }
   
        try{sql = ("Update Modules set module_name= '" + moduleName + "', category= '" + modCategory + "', stream_id= '" + streamId + "' WHERE Module_Id=" + id);
           numRowsAffected = stmt.executeUpdate(sql);
           out.println(numRowsAffected + " Updated <BR>");
        } catch (SQLException e) {
           out.println("Error encountered during row update for users: " + e.toString() + "<BR>");
       }
       // select
       /*sql = "select user_id from users";
  rs = stmt.executeQuery(sql);
  
  ArrayList moduleList = new ArrayList();
  request.setAttribute("moduleList", moduleList);
  
  while (rs.next()) {
        moduleList.add(rs.getString("user_id"));
        //out.println("User Id = " + rs.getString("user_id") + "<BR>"); 
        } // End while 
  
   out.println("<P>");*/
       // delete
       /* try {
    sql = "delete from users";
    numRowsAffected = stmt.executeUpdate(sql);
    out.println(numRowsAffected + " user(s) deleted. <BR>");
  } catch (SQLException e) {
    out.println("Error encountered during deletion of employee: " + e.toString() + "<BR>");
  
  }  
  out.println("<P>"); */
       //rs.close();
       stmt.close();
       //commit
  conn.commit();
  
  //disconnect
  conn.close();
  String site= "modules.jsp";
  response.setStatus(response.SC_MOVED_TEMPORARILY);
  response.setHeader("Location",site);
  
%>  
