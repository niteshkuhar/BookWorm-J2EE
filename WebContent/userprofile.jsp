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
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>

  <!-- CSS -->
  <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <!-- Variable size, fitting any screen size and resolution -->
  <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
<title>My profile</title>
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
		PreparedStatement st=conn.prepareStatement("SELECT * from register WHERE userid=?");
		st.setString(1,u);
		rs=st.executeQuery();
    rs.next();
  %>

<div class="row">
  <form class="col s12">
    <!--             first row            -->
    <div class="row">
      <div class="input-field col s4">
      </div>
      <div class="input-field col s4">
        <span class="cyan-text center-align"><h4>Welcome <%= rs.getString("userid")%></h4></span>
      </div>
      <div class="input-field col s4">
      </div>
    </div>
    <div class="row">
      <div class="input-field col s3">
      </div>
      <div class="input-field col s6">
        <table class="hoverable centered striped">
          <% 
          try{
            do
          {
          %>
          <thead>
            <tr>
               <th data-field="id">Details</th>
               <th data-field="name">Information</th>
            </tr>
          </thead>
          <tbody>
            <tr>
              <td>Name</td> 
              <td><%= rs.getString("fullname")%></td>
            </tr>
            <tr>
              <td>Email</td>
              <td><%= rs.getString("mail")%></td>
            </tr>
            <tr>
              <td>Mobile</td>
              <td><%= rs.getString("phone")%></td>
            </tr>
            <tr>
              <td>Date of Birth</td>
              <td><%= rs.getString("dob")%></td>
            </tr>
          </tbody>
        </table>
      </div>
      <div class="input-field col s3">
      </div>
    </div>
  </form>
</div>

<%
}
while(rs.next());
}
catch(SQLException e) { 
    e.printStackTrace();
     } 
%>
<div class="row center">
  <a href="#" onclick="hideshow('hideout');">Change password</a>
</div>
<div id="hideout" style="visibility:hidden">     
  <div class="row">       <!--    -->
    <form class="col s12" action="forgot.html">
      <div class="row">
        <div class="input-field col s4">
        </div>
        <div class="input-field col s4">
          <input placeholder="Enter your old password" type="password" name="opassword" required>
          <label for="opassword">Old password</label>
        </div>
        <div class="input-field col s4">
        </div>
      </div>
      <div class="row">
        <div class="input-field col s4">
        </div>
        <div class="input-field col s4">
          <div class="row center">
            <button class="btn waves-effect waves-light btn-large tooltipped" data-position="bottom" data-delay="50" data-tooltip="Enter your current password" type="submit" name="chngpass">Change</button>
          </div>
        </div>
        <div class="input-field col s4">
        </div>
      </div>
    </form>
  </div>
</div>
      
	
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/materialize.js"></script>
<script type="text/javascript">
  function hideshow(id){
    var e = document.getElementById(id);
    if(e.style.visibility == "hidden")
      e.style.visibility = "visible";
    else
      e.style.visibility = "hidden";
  }
</script>
</body>
</html>