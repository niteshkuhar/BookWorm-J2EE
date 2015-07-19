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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>

  <!-- CSS -->
  <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <!-- Variable size, fitting any screen size and resolution -->
  <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
<title>Upload history</title>
</head>
<body>
<% 
 String u;
 	//try{
		//u=null; 
 	u=(String)session.getAttribute("id");
 	//}
 	/*catch(Exception e)
 	{
 		//u="test";
 	}*/
 		if(u == null)
 		{
 %>
 
 <nav class="red lighten-1" role="navigation">
    <div class="nav-wrapper container"><a id="logo-container" href="index.jsp"><img src="img/logo.png" width="65"></a>
      <ul class="right hide-on-med-and-down">
        <li><a href="signup.html">Signup</a></li>
        <li><a href="login.html">Login</a></li>
        <li><a href="search.jsp">Search</a></li>
      </ul>
    </div>
  </nav>
  
  <%
 		}
 		else
 		{
  %>
  
   <nav class="red lighten-1" role="navigation">
    <div class="nav-wrapper container"><a id="logo-container" href="index.jsp"><img src="img/logo.png" width="65"></a>
      <ul class="right hide-on-med-and-down">
        <li><a href="logout.jsp">Logout</a></li>
        <li><a href="search.jsp">Search</a></li>
      </ul>
    </div>
  </nav>
  
  <%
 		}
  %>
  
	<%! ResultSet rs; %>
	<% 
		u=(String)session.getAttribute("id");
		Class.forName("oracle.jdbc.driver.OracleDriver");
		Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe","system","oracle");
		PreparedStatement st=conn.prepareStatement("SELECT bookname, uploaddate, semcode, edition FROM book WHERE userid=?");
		st.setString(1,u);
		rs=st.executeQuery();
	%>

<div class="row">
  <form class="col s12">
    <!--             first row            -->
    <div class="row">
      <div class="input-field col s4">
      </div>
      <div class="input-field col s4">
        <span class="cyan-text center-align"><h4>Your uploads</h4></span>
      </div>
      <div class="input-field col s4">
      </div>
    </div>
    <div class="row">
      <div class="input-field col s3">
      </div>
      <div class="input-field col s6">
        <table class="hoverable centered striped">
          <thead>
            <tr>
               <th data-field="bname">Book name</th>
               <th data-field="dou">Date of upload</th>
               <th data-field="sem">Semester</th>
               <th data-field="ed">Edition</th>
            </tr>
          </thead>
          <% 
				try{while(rs.next())
				{
			%>
          <tbody>
            <tr>
            	<td><%= rs.getString("bookname")%></td>
				      <td><%= rs.getString("uploaddate")%></td>
				      <td><%= rs.getString("semcode")%></td>
				      <td><%= rs.getString("edition")%></td>
            </tr>
          </tbody>
          <%
				}
				}
          	catch(Exception e)
          	{
          		e.printStackTrace();
          	}
		  %>
        </table>
      </div>
      <div class="input-field col s3">
      </div>
    </div>
  </form>
</div>

</body>
</html>