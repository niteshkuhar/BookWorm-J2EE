<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!doctype html>
<html>
 <head>
  <meta charset="utf-8">
  <title>Terms & conditions</title>
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
			<h1 class="header center green-text darken-2">Terms & Conditions</h1>
				<p class="flow-text">1. Using Bookworm:
				<br>
You agree and understand that Bookworm is an internet enabled electronic platform that facilitates communication for the purposes of advertising and distributing information on Engineering books. You further agree and understand that we do not endorse, market or promote any of the listings, postings or information, nor do we at any point in time come into possession of or engage in the distribution of any of the books, you have posted, listed or provided information about on our site.
<br>
a. " Your Information" is defined as any information you provide to us or other users of the Site during the registration and upload of a book. You agree that you are the lawful owner having all rights, title and interest in your information, and further agree that you are solely responsible and accountable for Your Information and that we act as a mere platform for your online distribution and publication of Your Information.
<br>
b. You agree that your listing, posting and / or Information :
<br> shall not be fraudulent, misrepresent, mislead or pertain to the sale of any illegal, counterfeit, stolen goods and / or services
 <br>shall not pertain to good , services of which you are not the lawful owner or you do not have the authority or consent to 'list' which do not belong to you or you do not have the authority for, shall not infringe any intellectual property, trade secret, or other proprietary right or rights of publicity or privacy of any third party;
 <br>shall not consist of material that is an expression of bigotry, racism or hatred based on age, gender, race, religion, caste, class, lifestyle preference, and nationality and / or is in the nature of being derogatory, slanderous to any third party.
 <br>shall not be obscene, contain pornography or contain “indecent representation of women”.
 <br>shall not distribute or contain spam, multiple / chain letters, or pyramid schemes in any of its forms; 
 <br>shall not distribute viruses or any other technologies that may harm Bookworm or the interests or property of Bookworm users or impose an unreasonable load on the infrastructure or interfere with the proper working of Bookworm. 
 <br>shall not, directly or indirectly, offer, attempt to offer, trade or attempt to trade in any goods and services, the dealing of which is prohibited or restricted in any manner under the provisions of any applicable law, rule, regulation or guideline for the time being in force.
 <br>shall not be placed in a wrong category or in an incorrect area of the site;
 <br>shall not be placed in any other Bookworm site except on the site that relates to the city in which you are located.
<br>
c. You agree that your listing, posting and / or Information : if you use the Site by registering on the Site, you are responsible for maintaining the confidentiality of your User ID, password, email address and for restricting access to your computer, computer system, computer network and your Bookworm account, and you are responsible for all activities that occur under your User ID and password.
<br>
2. Eligibility
<br>
Use of Bookworm,either by registration or by any other means, is available only to persons, who are Citizens of the Republic of India,  and persons who can enter into a legally binding contract, and or are not barred by any law for the time being in force. If you access Bookworm, either by registration on the Site or by any other means, not as an individual but on behalf of a legal entity, you represent that you are fully authorized to do so and the listing, posting or information placed on the site on behalf of the legal entity is your responsibility and you agree to be accountable for the same to other users of the Site.
<br>
3. Abuse of Bookworm
<br>
You agree to inform us if you come across any listing or posting that is offensive or violates our listing policy or infringes any intellectual property rights by clicking on the CONTACT US to enable us to keep the site working efficiently and in a safe manner. We reserve the right to take down any posting, listing or information and or limit or terminate our services and further take all reasonable technical and legal steps to prevent the misuse of the Site in keeping with the letter . In the event you encounter any problems with the use of our site or services you are requested to report the problem by clicking on CONTACT US.
<br>
4. Violations by User
<br>
You agree that in the event your listing, posting or your information violates policy, we shall have the right to terminate and or suspend your membership of the Site and refuse to provide you or any person acting on your behalf, access to the Site.
<br>
5. Liability
<br>
You agree not to hold Bookworm or any of its officers, employees, agents responsible or accountable for any of your listing, postings or information and nor shall we, our officers, employees or agents be liable for any misuse, illegal activity or third party content as most postings, listings or information are generated by various users directly and we do not have any role in the creation, publication or distribution of the posting, listing or information, nor are we in a position to have editorial control over the substance or content contained in the listings, postings, or information, save and except to the extent provided in sec 3 above.
<br>
You understand and agree that we do not guarantee the accuracy or legitimacy of any listing, posting, information by other users. You further agree that we are not liable for any loss of money, goodwill, or reputation, or any special, indirect, or consequential damages arising out of your use of the site or as a result of any sale, purchase of goods and services with other users of the site. We also cannot guarantee continuous or secure access to our Services. Accordingly, to the extent legally permitted we exclude all implied warranties, of merchantability, fitness or quality of the Site and our services.
<br>
6. Personal Information
<br>
By using Bookworm, you agree to the collection, transfer, storage and use of any personal information provided by you on the Site by Bookworm. The data is stored and controlled on servers located in Kolkata, India. You also agree to receive marketing communications from us unless you specifically contact us.
<br>
7. General
<br>
We may update this Terms & Conditions at any time and may notify you of such updates via a post on the boards and /or through email communications. The modified Terms & Condition shall come into effect either at the time you place your next posting, listing or information on the Site or after a period of 30 days from the date of the update, whichever is sooner. 
</p>			
</div>
<div class="input-field col s2">
	<ul class="section table-of-contents">
          		<li><a href="contactus.jsp" class="">Contact us</a></li>
          		<li><a href="tnc.jsp" class="active">Terms & conditions</a></li>
          		<li><a href="faq.jsp" class="">F.A.Q</a></li>
          		<li><a href="aboutus.jsp" class="">About us</a></li>
        	</ul>
      	</div>
      </div>
     </form>
    </div>
			
</body>
</html>