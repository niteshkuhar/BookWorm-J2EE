<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
 <head>
  <meta charset="utf-8">
  <title>About us</title>
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
        <div class="input-field col s2">
          <div class="card medium">
            <div class="card-image waves-effect waves-block waves-light">
              <img class="activator" src="img/amitav.png">
            </div>
            <div class="card-content">
              <span class="card-title activator grey-text text-darken-4">Amitav Singh</span>
              <p><a>CSE, 4th year</a></p>
            </div>
            <div class="card-reveal">
              <span class="card-title grey-text text-darken-4">Amitav Singh</span>
              <p>Pursuing B.Tech in Computer Science & Engineering at Netaji Subhash Engineering College. Passing out in 2016.</p>
            </div>
          </div>
        </div>
        <div class="input-field col s2">
        	<div class="card medium">
            <div class="card-image waves-effect waves-block waves-light">
              <img class="activator" src="img/anshu.jpg">
            </div>
            <div class="card-content">
              <span class="card-title activator grey-text text-darken-4">Anshu Anand</span>
              <p><a>CSE, 4th year</a></p>
            </div>
            <div class="card-reveal">
              <span class="card-title grey-text text-darken-4">Anshu Anand</span>
              <p>Pursuing B.Tech in Computer Science & Engineering at Netaji Subhash Engineering College. Passing out in 2016.</p>
            </div>
          </div>
        </div>
        <div class="input-field col s2">
        <div class="card medium">
            	<div class="card-image waves-effect waves-block waves-light">
              <img class="activator" src="img/dipanjan.jpg">
            </div>
            <div class="card-content">
              <span class="card-title activator grey-text text-darken-4">Dipanjan Das</span>
              <p><a>CSE, 4th year</a></p>
            </div>
            <div class="card-reveal">
              <span class="card-title grey-text text-darken-4">Dipanjan Das</span>
              <p>Pursuing B.Tech in Computer Science & Engineering at Netaji Subhash Engineering College. Passing out in 2016.</p>
            </div>
          </div>
        </div>
        <div class="input-field col s2">
        	<div class="card medium">
            <div class="card-image waves-effect waves-block waves-light">
              <img class="activator" src="img/nitesh.jpg">
            </div>
            <div class="card-content">
              <span class="card-title activator grey-text text-darken-4">Nitesh Kuhar</span>
              <p><a>CSE, 4th year</a></p>
            </div>
            <div class="card-reveal">
              <span class="card-title grey-text text-darken-4">Nitesh Kuhar</span>
              <p>Pursuing B.Tech in Computer Science & Engineering at Netaji Subhash Engineering College. Passing out in 2016.</p>
            </div>
          </div>
        </div>
        <div class="input-field col s2">
        	<div class="card medium">
            <div class="card-image waves-effect waves-block waves-light">
              <img class="activator" src="img/priyanka.jpg">
            </div>
            <div class="card-content">
              <span class="card-title activator grey-text text-darken-4">Priyanka Priya</span>
              <p><a>CSE, 4th year</a></p>
            </div>
            <div class="card-reveal">
              <span class="card-title grey-text text-darken-4">Priyanka Priya</span>
              <p>Pursuing B.Tech in Computer Science & Engineering at Netaji Subhash Engineering College. Passing out in 2016.</p>
            </div>
          </div>
        </div>
        <div class="input-field col s2">
        	<ul class="section table-of-contents">
          		<li><a href="contactus.jsp" class="">Contact us</a></li>
          		<li><a href="tnc.jsp" class="">Terms & conditions</a></li>
          		<li><a href="faq.jsp" class="">F.A.Q</a></li>
          		<li><a href="aboutus.jsp" class="active">About us</a></li>
        	</ul>
        </div>
      </div>
    </form>
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