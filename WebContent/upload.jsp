<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
      <head>
            <meta charset="utf-8">
            <title>Upload</title>
            <link type="text/css" rel="stylesheet" href="css/materialize.css" media="screen,projection"/>
            <meta name="viewport" content="width=device-width, initial-scale=1.0"/>
      </head>
      <body>
      
 <% 
		String u=(String)session.getAttribute("id");
 		if(u==null)
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
      <!--      --------------Divided into 6x2(rxc)-----------       -->
      <div class="row">
            <form class="col s12" action="UploadS">
                  <div class="row">     <!--     Bookname   Category      Author        -->
                        <div class="input-field col s4">
                              <input type="text" name="bookname" placeholder="Exactly as printed on the cover" autofocus required>
                              <label for="bookname">Book name</label>
                        </div>
                        <div class="input-field col s4">
                              <select id="semester" name="semester">
                                    <option value="" disabled selected>Choose the semester</option>
                                    <option value="1" >1st Semester</option>
                                    <option value="2" >2nd Semester</option>
                                    <option value="3" >3rd Semester</option>
                                    <option value="4" >4th Semester</option>
                                    <option value="5" >5th Semester</option>
                                    <option value="6" >6th Semester</option>
                                    <option value="7" >7th Semester</option>
                                    <option value="8" >8th Semester</option>
                                    <option value="9" >Pass-Out</option>
                                    <option value="10" >Faculty</option>
                              </select>
                              <label for="semester">Semester</label>
                        </div>
                        <div class="input-field col s4">
                              <input type="text" name="author" placeholder="Author's name" required>
                              <label for="author">Author</label>
                        </div>
                  </div>
                  <div class="row">       <!--     Publication       Edition      Condition              -->
                        <div class="input-field col s4">
                              <input type="text" name="publication" placeholder="Publishers name" required>
                              <label for="publication">Publication</label>
                        </div>
                        <div class="input-field col s4">
                              <input type="number" name="edition" placeholder="Edition of the book" max=20 min=1 step=1 required>
                              <label for="edition">Edition</label>
                        </div>
                        <div class="input-field col s4">
                              <input type="text" name="condition" placeholder="Be honest" required>
                              <label for="condition">Condition of the book</label>
                        </div>
                  </div>
                  <div class="row">       <!--     Stream      Price       MRP           -->
                        <div class="input-field col s4">
                              <select name="stream" required>
                                    <option value="" disabled selected>Select stream</option>
                                    <option value="22" >Aerospace Engineering</option>
                                    <option value="30" >Agricultural Engineering</option>
                                    <option value="29" >Apparel Production Management</option>
                                    <option value="5" >Applied Electronics & Instrumentation Engineering</option>
                                    <option value="32" >Architecture</option>
                                    <option value="19" >Automobile Engineering</option>
                                    <option value="13" >Bio Medical Engineering</option>
                                    <option value="7" >Bio-Technology</option>
                                    <option value="27" >Ceramic Technology</option>
                                    <option value="10" >Chemical Engineering</option>
                                    <option value="9" >Civil Engineering</option>
                                    <option value="1" >Computer Science & Engineering</option>
                                    <option value="28" >Dairy Technology</option>
                                    <option value="15" >Electrical & Electronics Engineering</option>
                                    <option value="4" >Electrical Engineering</option>
                                    <option value="3" >Electronics & Communication Engineering</option>
                                    <option value="14" >Electronics & Telecommunication Engineering</option>
                                    <option value="8" >Food Technology</option>
                                    <option value="2" >Information Technology</option>
                                    <option value="11" >Instrumentation & Control Engineering</option>
                                    <option value="31" >Jute & Fibre Technology</option>
                                    <option value="26" >Jute Technology</option>
                                    <option value="25" >Leather Technology</option>
                                    <option value="16" >Marine Engineering</option>
                                    <option value="6" >Mechanical Engineering</option>
                                    <option value="20" >Metallurgical Engineering</option>
                                    <option value="21" >Mining Engineering</option>
                                    <option value="24" >Power Engineering</option>
                                    <option value="23" >Printing Engineering</option>
                                    <option value="12" >Production Engineering</option>
                                    <option value="18" >Textile Technology</option>
                                    <option value="0" >Other (Not Applicable)</option>
                              </select>
                              <label for="stream">Target stream</label>
                        </div>
                        <div class="input-field col s4">
                              <input type="number" name="mrp" max=1000 min=1 step=1 placeholder="Buying price" required>
                              <label for="mrp">Retail price</label>
                        </div>
                        <div class="input-field col s4">
                              <input type="number" name="price" max=1000 min=1 step=1 placeholder="Choose wisely" required>
                              <label for="price">Price</label>
                        </div>
                  </div>
                  <div class="row">       <!--        Rating          -->
                        <div class="input-field col s5">
                        </div>
                        <div class="range-field col s2">
                              <input type="range" name="rating" min="1" max="5" value="1">
                              <label for="rating">Book rating</label>
                        </div>
                        <div class="input-field col s5">
                        </div>
                  </div>
                  <div class="row">
                        <div class="input-field col s4">
                              <div class="right-align">
                                    <button class="btn waves-effect waves-light tooltipped" data-position="bottom" data-delay="50" data-tooltip="Confirm book upload with the enterred conditions" type="submit">Submit</button>
                              </div>
                        </div>
                        <div class="input-field col s4">
                        </div>
                        <div class="input-field col s4">
                              <div class="left-align">
                                    <button class="btn waves-effect waves-light tooltipped" data-position="bottom" data-delay="50" data-tooltip="Reset all the fields and start afresh" type="reset">Reset</button>
                              </div>
                        </div>
                  </div>
            </form>
      </div>
      <script type="text/javascript" src="js/jquery.js"></script>
      <script type="text/javascript" src="js/materialize.js"></script>
      </body>
</html>