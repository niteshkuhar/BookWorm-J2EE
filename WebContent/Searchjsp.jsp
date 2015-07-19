<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.sql.*"  %>
<%@ page import="java.sql.DriverManager"  %>
<%@ page import="java.sql.ResultSet"  %>
<%@ page import="java.sql.SQLException"  %>
<%@ page import="java.sql.Statement"  %>
<!DOCTYPE html>
<html>
 <head>
  <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
  <title>Search results</title>
  <link type="text/css" rel="stylesheet" href="css/materialize.css" media="screen,projection"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
 </head>
 <body>
 
<!-- Navigation tabs and bar -->
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

  <br>
 <%! ResultSet rs; %>
  <%! String userid; %>
 <%! String collegecode; %>
 <%! String streamcode; %>
 <%! String semcode; %>
 <%! String bookname; %>
 <%! String publication; %>
 <%! String author; %>
 <%! String price; %>
 <%! String PH; %>
 
 
 
 <% 
//String u=(String)session.getAttribute("id");
Class.forName("oracle.jdbc.driver.OracleDriver");
Connection conn=DriverManager.getConnection("jdbc:oracle:thin:@localhost:1521/xe","system","oracle");
collegecode=request.getParameter("college");
streamcode=request.getParameter("stream");
semcode=request.getParameter("semester");
//


PreparedStatement st1=conn.prepareStatement("SELECT userid FROM register WHERE collegecode=? ");
st1.setString(1,collegecode);
rs=st1.executeQuery();
if(rs.next())
{
	userid=rs.getString("userid");
//st.setString(2,streamcode);
//st.setString(3,semcode);
//1rs=st.executeQuery();
PreparedStatement st2=conn.prepareStatement("SELECT phone FROM register WHERE USERID=? ");
st2.setString(1,userid);
rs=st2.executeQuery();
if(rs.next())
{
	PH=rs.getString("phone");
}
PreparedStatement st;
if(streamcode==null && semcode==null)
{
	st=conn.prepareStatement("SELECT * FROM book WHERE userid=?");
	st.setString(1,userid);
}
else if(streamcode==null)
	{
	st=conn.prepareStatement("SELECT * FROM book WHERE userid=? and semcode=?");
	st.setString(1,userid);
		st.setString(2,semcode);
		}
	else if(semcode==null)
{
	st=conn.prepareStatement("SELECT * FROM book WHERE userid=? and streamcode=?");
	st.setString(1,userid);
	st.setString(2,streamcode);
	}
	else
	{
	st=conn.prepareStatement("SELECT * FROM book WHERE userid=? and streamcode=? and semcode=?");
	st.setString(1,userid);
	st.setString(2,streamcode);
	st.setString(3,semcode);
	}
rs=st.executeQuery();
try{
	%>
	
<div class="row">
  <form class="col s12">
    <!--             first row            -->
    <div class="row">
      <div class="input-field col s4">
      </div>
      <div class="input-field col s4">
        <span class="cyan-text center-align"><h4>Search results</h4></span>
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
            	<th>Book name</th>
            	<th>Publication</th>
            	<th>Author</th>
            	<th>Edition</th>
            	<th>Price</th>
            	<th>Date of upload</th>
            	<th>Rating</th>
            	<th>Seller</th>
            </tr>
           </thead>
           <tbody>
			<% 
				while(rs.next())
				{
			%>
		<tr>
		<td><%= rs.getString("bookname")%></td>
		<td><%= rs.getString("publication")%></td>
		<td><%= rs.getString("author")%></td>
		<td><%= rs.getString("edition")%></td>
		<td><%= rs.getString("price")%></td>
		<td><%= rs.getString("uploaddate")%></td>
		<td><%= rs.getString("rating")%></td>
		<td><%= PH%></td>
		</tr>
		<%
		}
		%>
	</tbody>
	<%
}
catch(Exception e)
{
	e.printStackTrace();
}
}
else
{
	out.println("Nothing");
}
  %>
  </table>    
  </div>
  </div>
  </form>
  </div>      
 </body>
</html>