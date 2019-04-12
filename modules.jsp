<jsp:include page="head-tag.jsp"/>
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
    
  } catch(Exception e) {
    out.println("Connection failed: " + e.toString() + "<P>");      
  }
  String sql;
  int numRowsAffected;
  Statement stmt = conn.createStatement();
  ResultSet rs;
  
  
  // select
  sql = "select module_name from modules";
  rs = stmt.executeQuery(sql);
  
  ArrayList moduleList = new ArrayList();
  request.setAttribute("moduleList", moduleList);
  
  while (rs.next()) {
        moduleList.add(rs.getString("module_name"));
        //out.println("User Id = " + rs.getString("user_id") + "<BR>"); 
        } // End while 
  

   
    
    // select
  sql = "select module_id from modules";
  rs = stmt.executeQuery(sql);
    
 ArrayList moduleIdList = new ArrayList();
  request.setAttribute("moduleIdList", moduleIdList);
  
  while (rs.next()) {
        moduleIdList.add(rs.getString("module_id"));
        //out.println("User Id = " + rs.getString("user_id") + "<BR>"); 
        } // End while 
  

   
    
    // select
  sql = "select stream_Name from stream";
  rs = stmt.executeQuery(sql);
    
 ArrayList streamName = new ArrayList();
  request.setAttribute("streamName", streamName);
  
  while (rs.next()) {
        streamName.add(rs.getString("stream_Name"));
        //out.println("User Id = " + rs.getString("user_id") + "<BR>"); 
        } // End while 
  
  
  // select
  sql = "select category from modules";
  rs = stmt.executeQuery(sql);
  
  ArrayList catagoryName = new ArrayList();
  request.setAttribute("catagoryName",catagoryName);
  
 while (rs.next()) {
        catagoryName.add(rs.getString("Category"));
        //out.println("User Id = " + rs.getString("user_id") + "<BR>"); 
        } // End while 
  
  
  sql = "select s.stream_name, m.module_name from stream s, modules m where m.stream_id = s.stream_id";
  rs = stmt.executeQuery(sql);
  ArrayList streamNameList = new ArrayList();
  request.setAttribute("streamNameList", streamNameList);
  //ArrayList junk = new ArrayList();
  //request.setAttribute("junk", junk);
  
  while (rs.next()) {
        streamNameList.add(rs.getString("stream_name"));
        //out.println("User Id = " + rs.getString("user_id") + "<BR>"); 
        } // End while 
  

    
    
    // select
  sql = "select stream_Name from stream";
  rs = stmt.executeQuery(sql);
  
  
  
  rs.close();
  stmt.close();
  //commit
  conn.commit();
  
  //disconnect
  conn.close();
  
%>  

<body class="bg-light">

<jsp:include page="nav.jsp"/>
  <div class="container-fluid">
    <div class="container mt-2 pt-4 pb-3">
      <nav aria-label="breadcrumb">
        <ol class="breadcrumb" style="background: transparent;">
          <li class="breadcrumb-item"><a href="#">Admin</a></li>
          <li class="breadcrumb-item active" aria-current="page">Modules</li>
        </ol>
      </nav>
    </div>
  </div>

  <!-- Tabs -->
  <div class="container-fluid">
    <div class="container">
      <ul class="nav nav-tabs">
        <li class="nav-item">
          <a class="nav-link" href="admin.jsp">Users</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="streams.jsp">Streams</a>
        </li>
        <li class="nav-item">
          <a class="nav-link" href="courses.jsp">Courses</a>
        </li>
        <li class="nav-item">
          <a class="nav-link active" href="modules.jsp">Modules</a>
        </li>
      </ul>
    </div>
  </div>

  <div class="container-fluid bg-white" style="min-height: 100vh;">
    <div class="container pb-5">

      <div class="row py-3">
        <div class="col-lg-12">
            <form action="createModule.jsp">
          <div class="form">
            <div class="form-row">
              <div class="col-2">
                  <button class="btn btn-small btn-success no-border" type="submit"><small><i class="fas fa-plus pr-2"></i>Insert Module</small></button>
              </div>
              <div class="col-4">
                <input type="text" class="form-control" id="modName" name="modName" placeholder="Module Name" required>
              </div>
              <div class="col-3">
                <input type="text" class="form-control" placeholder="category" name="modCategory" id="modCategory" required>
              </div>
                <div class="col-3">
                    <select id="inputState" class="form-control" required="" name ="streamName">
                        <c:forEach items="${streamName}" var="stream">
                            <option value="${stream}">
                                ${stream}
                            </option>
                        </c:forEach>
                    </select>
                </div>
            </div>
          </div>
            </form>
        </div>
      </div>

      <table class="table table-striped table-bordered">
        <thead>
          <tr>
            <th scope="col" style="width: 10%;">Module ID</th>
            <th scope="col">Name</th>
            <th scope="col">Category</th>
            <th scope="col">Stream Name</th>
          </tr>
        </thead>
        <tbody>
            <c:set var="count" value="1"/>
            <c:forEach items="${moduleList}" var="module">
            <tr value="${module}">
                <th scope="row"><a href="manage-module.jsp?id=${moduleIdList.get(count-1)}&name=${catagoryName.get(count-1)}&stream=${streamNameList.get(count-1)}&okay=${module}">${moduleIdList.get(count-1)}</a></th>
                <td>
                   ${module}
                </td>
                <td>
                    ${catagoryName.get(count-1)}
                </td>
                <td>
                    ${streamNameList.get(count-1)}
                </td>
            </tr>
            <c:set var="count" value="${count+1}"/>
            </c:forEach>
        </tbody>
      </table>
    </div>
  </div>
  <!-- /Tabs -->

  <!-- Optional JavaScript -->

  <!-- jQuery -->
  <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" integrity="sha384-q8i/X+965DzO0rT7abK41JStQIAqVgRVzpbzo5smXKp4YfRvH+8abtTE1Pi6jizo" crossorigin="anonymous"></script>
  <!-- Popper.js -->
  <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" integrity="sha384-UO2eT0CpHqdSJQ6hJty5KVphtPhzWj9WO1clHTMGa3JDZwrnQq4sF86dIHNDz0W1" crossorigin="anonymous"></script>
  <!-- Bootstrap.js -->
  <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" integrity="sha384-JjSmVgyd0p3pXB1rRibZUAYoIIy6OrQ6VrjIEaFf/nJGzIxFDsf4x0xIM+B07jRM" crossorigin="anonymous"></script>

</body>
</html>