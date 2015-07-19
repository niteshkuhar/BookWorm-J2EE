<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
 <head>
  <meta charset="utf-8">
  <title>Welcome</title>
  <link type="text/css" rel="stylesheet" href="css/materialize.css" media="screen,projection"/>
  <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
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
  
  
  <br>
  <!--      --------------Divided into 2-3-2-3-2, only using 1,2 and 2,2-----------       -->
  <div class="row">
    <form class="col s12">
    <!--             GREETINGS            -->
      <div class="row">
        <div class="input-field col s4">
        </div>
        <div class="col s4">
          <div class="card-panel orange lighten-2">
            <span class="white-text center-align"><h4>Welcome <%= u %></h4></span>
          </div>  
        </div>
        <div class="input-field col s4">
        </div>
      </div>
      <!--             profile         history            -->
      <div class="row">
        <div class="input-field col s2">
        </div>
        <div class="input-field col s3">
          <div class="card blue-grey darken-1">
            <div class="card-content white-text">
              <span class="card-title">User's profile</span>
              <p>This contains information that you have given us about yourself. </p>
            </div>
            <div class="card-action center-align">
              <a href="userprofile.jsp">Take a peek</a>
            </div>
          </div>
        </div>
        <div class="input-field col s2">
        </div>
        <div class="input-field col s3">
          <div class="card blue-grey darken-1">
            <div class="card-content white-text">
              <span class="card-title">Upload history</span>
              <p>In here you can find the list of your past sales/purchases.</p>
            </div>
            <div class="card-action center-align">
              <a href="uploadhistory.jsp">Browse it</a>
            </div>
          </div>
        </div>
        <div class="input-field col s2">
        </div>
      </div>
      <!--             upload         rating            -->
      <div class="row">
        <div class="input-field col s2">
        </div>
        <div class="input-field col s3">
          <div class="card blue-grey darken-1">
            <div class="card-content white-text">
              <span class="card-title">Upload a book</span>
              <p>Have a book for sale? Go right away and put it up on our site.</p>
            </div>
            <div class="card-action center-align">
              <a href="upload.jsp">Let's go</a>
            </div>
          </div>
        </div>
        <div class="input-field col s2">
        </div>
        <div class="input-field col s3">
          <div class="card blue-grey darken-1">
            <div class="card-content white-text">
              <span class="card-title">View rating</span>
              <p>Check the books rated by you and also give rating to unrated ones.</p>
            </div>
            <div class="card-action center-align">
              <a href="search.jsp">Take me there</a>
            </div>
          </div>
        </div>
        <div class="input-field col s2">
        </div>
      </div>
    </form>
  </div>
    
  <script type="text/javascript" src="js/jquery.js"></script>
  <script type="text/javascript" src="js/materialize.js"></script>
 </body>
</html>