<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
 <head>
  <meta charset="utf-8">
  <title>F.A.Q</title>
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
			<h1 class="header center green-text darken-2">Frequently Asked Questions</h1>
				<p class="flow-text">Q: Can I buy books from here?</p>		
				<blockquote>
      				No, you can't at the moment. Right now we help you find available books around you, according to your needs.
    			</blockquote>
    			<p class="flow-text">Q: Why can't I log in after signing up?</p>		
				<blockquote>
      				Your credentials will be checked by our administrators and they'll verify your account. Only after then can you log in. It usually takes a couple of hours to verify new registrations.
    			</blockquote>	
    			<p class="flow-text">Q: Why isn't there a photo/picture of the book?</p>		
				<blockquote>
      				We are sorry for this but we're currently working to enable this feature ASAP.
    			</blockquote>
    			<p class="flow-text">Q: I forgot my password. Please help!</p>		
				<blockquote>
      				No worries, click on the "Forgot password" link in the login page and answer your security question and you'll be able to set a new password for your account.
    			</blockquote>
    			<p class="flow-text">Q: Why isn't the rating feature working?</p>		
				<blockquote>
      				Apologies for the inconvenience caused but we're currently working on it.
    			</blockquote>
</div>
<div class="input-field col s2">
	<ul class="section table-of-contents">
          		<li><a href="contactus.jsp" class="">Contact us</a></li>
          		<li><a href="tnc.jsp" class="">Terms & conditions</a></li>
          		<li><a href="faq.jsp" class="active">F.A.Q</a></li>
          		<li><a href="aboutus.jsp" class="">About us</a></li>
        	</ul>
      	</div>
      </div>
     </form>
    </div>
			
</body>
</html>