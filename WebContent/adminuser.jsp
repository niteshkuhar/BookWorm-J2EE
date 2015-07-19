<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ page import="java.sql.*" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>

  <!-- CSS -->
  <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <!-- Variable size, fitting any screen size and resolution -->
  <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
<title>Approve users</title>
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
	PreparedStatement ps=conn.prepareStatement("select * from register where verify='no'");
	
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
      <div class="input-field col s4">
      </div>
      <div class="input-field col s4">
        <span class="cyan-text center-align"><h4>Welcome Administrator</h4></span>
      </div>
      <div class="input-field col s4">
      </div>
    </div>
    <div class="row">
      <div class="input-field col s3">
      </div>
      <div class="input-field col s6">
        <table id="tableSelect" class="hoverable centered striped">
          <thead>
            <tr>
            	<th></th>
            	<th>User ID</th>
            	<th>Mail ID</th>
            	<th>Contact no.</th>
            </tr>
           </thead>
           <% 
				if(rs.next())
				{
			%>
			<tbody>
			<%
			do
			{
				String userid=rs.getString("userid");
	         %>
	         <tr>
				<td><input name="status" type="radio" value=<%= userid %>>
				<label for="status"></label>
				<td><%= rs.getString("userid")%></td>
				<td><%= rs.getString("mail")%></td>
				<td><%= rs.getString("phone")%></td>
			</tr>
		<%
			}while(rs.next());
				}
				else
				{
					//alert window popup
				}
		  %>
		  </tbody>
			</table>
		</div>
	</div>
	<div class="row center">
        <button class="btn waves-effect waves-light btn-large tooltipped" data-position="bottom" data-delay="50" data-tooltip="Verify the selected user's details" type="submit" name="verify">Verify</button>
      </div>
</form>
</div>
<script type="text/javascript" src="js/jquery.js"></script>
<script type="text/javascript" src="js/materialize.js"></script>
</body>
</html>