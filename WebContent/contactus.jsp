<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
 <head>
  <meta charset="utf-8">
  <title>Contact us</title>
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
<div class="row">
    <form class="col s12">
      <!--             first row            -->
      <div class="row">
        <div class="input-field col s10">
			<h1 class="header center green-text darken-2">Want to reach out to us?</h1>
      		<div class="row center">
        		<h5 class="header col s12 light">If you have any querries/complaints/suggestions or all of them about our services you can reach out to us at the following mail IDs</h5>
      			<ul>
          			<li><a>gothamking007@gmail.com</a></li>
          			<li><a>nitesh.kuhar1@gmail.com</a></li>
          			<li><a>priyankasingh0194@gmail.com</a></li>
          			<li><a>ans.shri55@gmail.com</a></li>
          			<li><a>amitavsingh23.10.92@gmail.com</a></li>
        		</ul>
      		</div>
      	</div>
      	<div class="input-field col s2">
      		<ul class="section table-of-contents">
          		<li><a href="contactus.jsp" class="active">Contact us</a></li>
          		<li><a href="tnc.jsp" class="">Terms & conditions</a></li>
          		<li><a href="faq.jsp" class="">F.A.Q</a></li>
          		<li><a href="aboutus.jsp" class="">About us</a></li>
        	</ul>
      	</div>
      </div>
     </form>
    </div>
</body>
</html>