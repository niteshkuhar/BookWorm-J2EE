<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"  %>
<%@ page import="java.sql.DriverManager"  %>
<%@ page import="java.sql.ResultSet"  %>
<%@ page import="java.sql.SQLException"  %>
<%@ page import="java.sql.Statement"  %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>

  <!-- CSS -->
  <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <!-- Variable size, fitting any screen size and resolution -->
  <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>

<title>Approve books</title>
</head>
<body>

<nav class="red lighten-1" role="navigation">
	<div class="nav-wrapper container"><a id="logo-container" href="adminhome.html"><img src="img/logo.png" width="65"></a>
      <ul class="right hide-on-med-and-down">
        <li><a href="logout.jsp">Logout</a></li>
      </ul>
    </div>
  </nav>
  
<%! ResultSet rs; %>
<%
try
{
	Class.forName("oracle.jdbc.driver.OracleDriver");
	Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe","system","oracle");
	PreparedStatement ps=conn.prepareStatement("select * from book");
	
	//ps.setString(1,userid);
	//ps.setString(2, pass);
	
	rs=ps.executeQuery();
	
}
catch(Exception e)
{
	e.printStackTrace();
}

%>
<div class="row">
  <form class="col s12" action="adminuserS">
    <!--             first row            -->
    <div class="row">
      <div class="input-field col s3">
      </div>
      <div class="input-field col s6">
        <table class="hoverable centered striped">
          <thead>
            <tr>
            	<th>User ID</th>
            	<th>Book ID</th>
            	<th>Book name</th>
            	<th>Author</th>
            	<th>Publication</th>
            	<th>Edition</th>
            	<th>Upload date</th>
            	<th>Rating</th>
            </tr>
            </thead>
            <tbody>
	   <%
		while(rs.next())
		{
			String userid=rs.getString("userid");
		%>
			<tr>
			<td><%= rs.getString("userid")%></td>
			<td><%= rs.getString("bookid")%></td>
			<td><%= rs.getString("bookname")%></td>
			<td><%= rs.getString("author")%></td>
			<td><%= rs.getString("publication")%></td>
			<td><%= rs.getString("edition")%></td>
			<td><%= rs.getString("uploaddate")%></td>
			<td><%= rs.getString("rating")%></td>
			</tr>
		</tbody>	
		<%
			}
		%>
	</table>
</form>
</body>
</html>