<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html lang="en">
<head>
  <meta http-equiv="Content-Type" content="text/html; charset=UTF-8"/>
  <meta name="viewport" content="width=device-width, initial-scale=1, maximum-scale=1.0"/>
  <title>BookWorm</title>

  <!-- CSS -->
  <link href="css/materialize.css" type="text/css" rel="stylesheet" media="screen,projection"/>
  <!-- Variable size, fitting any screen size and resolution -->
  <link href="css/style.css" type="text/css" rel="stylesheet" media="screen,projection"/>
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
  
 
  <div class="section no-pad-bot" id="index-banner">
    <div class="container">
      <br><br>
      <h1 class="header center orange-text">Welcome to BookWorm</h1>
      <div class="row center">
        <h5 class="header col s12 light">A modern responsive front-end framework for reselling old and used books to ineterested parties all based on Material Design. Its like having an OLX for books for each college. So what you waiting for? Just dive!</h5>
      </div>
      <div class="row center">
        <a href="signup.html" id="download-button" class="btn-large waves-effect waves-light orange tooltipped" data-position="bottom" data-delay="50" data-tooltip="Go ahead and open an account">Start digging</a>
      </div>
      <br><br>
    </div>
  </div>
  <div class="container">
    <div class="section">
      <!--   Icon Section   -->
      <div class="row">
        <div class="col s12 m4">
          <div class="icon-block">
            <h5 class="center">Speeds up searching</h5>
            <p class="light">We did most of the heavy lifting for you to provide you a well maintained library of all books around you, just waiting to be bought. </p>
          </div>
        </div>

        <div class="col s12 m4">
          <div class="icon-block">
            <h5 class="center">Categorized racks</h5>
            <p class="light">Everything is sorted by Streams, Year and Colleges. This helps you to locate books within an instant.</p>
          </div>
        </div>

        <div class="col s12 m4">
          <div class="icon-block">
            <h5 class="center">No middlemen</h5>
            <p class="light">We have provided users with a window to sell your own books, so forget telling everyone around you to keep an eye out for any potential buyers. Your adverstisement, your price.</p>
          </div>
        </div>
      </div>

    </div>
    <br><br>
  </div>

  <footer class="page-footer orange">
    <div class="container">
      <div class="row">
        <div class="col l6 s12">
          <h5 class="white-text">Company Bio</h5>
          <p class="grey-text text-lighten-4">We are a team of 5 college students working on this project like a job. Any support is highly appreciated.</p>
		</div>
        <div class="col l3 s12">
          <h5 class="white-text">Settings</h5>
          <ul>
            <li><a class="white-text" href="contactus.jsp">Contact us</a></li>
            <li><a class="white-text" href="tnc.jsp">Terms & conditions</a></li>
            <li><a class="white-text" href="faq.jsp">F.A.Q</a></li>
            <li><a class="white-text" href="aboutus.jsp">About us</a></li>
          </ul>
        </div>
        <div class="col l3 s12">
          <h5 class="white-text">Connect</h5>
          <ul>
            <li><a class="white-text" href="#!">Facebook</a></li>
            <li><a class="white-text" href="#!">LinkedIn</a></li>
            <li><a class="white-text" href="#!">Twitter</a></li>
            <li><a class="white-text" href="#!">Google+</a></li>
          </ul>
        </div>
      </div>
    </div>
    <div class="footer-copyright">
      <div class="container">Developed on Materialize template, © 2015 BookWorm, All rights reserved.        
      </div>
    </div>
  </footer>

  <!--  Scripts-->
  <script src="js/jquery.js"></script>
  <script src="js/materialize.js"></script>
  <script src="js/init.js"></script>
  </body>
</html>