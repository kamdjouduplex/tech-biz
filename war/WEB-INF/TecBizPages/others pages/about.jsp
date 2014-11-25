<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.google.appengine.api.users.*" %>
<% UserService userService = UserServiceFactory.getUserService(); %>

<!DOCTYPE html >
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="favicon.ico">
    <style type="text/css">
    	.glyphicon-ok-sign{
    	font-size:18px;
    	color:#5cb85c;
    	}
    </style>
    <title>About</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/jumbotron.css" rel="stylesheet">

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
   
  </head>

  <body>
    <!-- Main jumbotron for a primary marketing message or call to action -->
    <div class="jumbotron">
      <div class="container">
        <span class="pull-right">
        <% if (userService.getCurrentUser() == null) { %>
		<p><a href="<%= userService.createLoginURL("/contact") %>">Sign in</a></p>
		<% }
		else { %>
		<p Style=" color:#fff"><b>Hi &nbsp;</b><%= userService.getCurrentUser().getNickname() %>&nbsp;
		
		<a type="button" class="btn btn-default" href="<%= userService.createLogoutURL("/home") %>" data-toggle="tooltip" data-placement="left" title="Sign out"><span class="glyphicon glyphicon-log-out"></span></a></p>
		
		<% } %>
		</span>
		
        <h1><img class="img-circle" alt="logo" src="images/busii.jpg"><b>TEC-BIZ</b></h1>
        <span  class="pull-right">
            <div class="blog-masthead">
                  <nav class="blog-nav">
                  <a class="blog-nav-item" href="login">  
                  <span class=" glyphicon glyphicon-log-in">&nbsp;</span>Sign  in  </a>|
                  <a class="blog-nav-item " href="newAccount"> 
                  <span class="glyphicon glyphicon-plus"> </span> Create an account  </a>|
                  <a class="blog-nav-item" href="help">  
                  <span class="glyphicon glyphicon-question-sign"> </span> Help </a>
                  </nav>
            </div>
        </span>
      </div>
    </div>

    <div class="container">
      <!-- Example row of columns -->
        <div class="row">
              
              <div class="row">
              	<div class="col-md-8">
              		<h1>About TEC-BIZ</h1><hr>
              		<br />
              		<h2>What is Tec-Biz ?</h2>
             		<p><b>Tec-Biz </b> Satand for Technoloogy into Businesses which is an application that allows business persons to control the status of their businesses from every where</p>
             		
             		<h2>Why Tec-Biz ?</h2>
             		<p>We noticed that there are many applictions to manage a specific kind of businesses across the world. But, not to manage variaties of businesses.
             		That is where we came out with the idea of Tec-Biz which allows you control the status of variaty kind of businesses from the same platform.</p>
             		
             		<h2>What are the advantages ?</h2>
             		<ul>
             			<li>The main advantage of this application is the full control of your business. That means you can easily adopt the application to your business </li>
             			<li>Also you don't need to present at the business place </li>
             			<li>As you can see the application is very user friendly and any body can used </li>
             			<li>You don't need any thing than a Google Account to start used the application</li>
             			<li>You can get the position of all your business on the map </li>
             			<li>An additional advantage of this application is that you can also check form other places to setup a new business using the map.</li>
             		</ul>
             		
             		<h2>How it works ?</h2>
             		<p>This is a administrator/client based application that means after login as administrator account you have access to a dashboard where you can handle every thing.
             		for more detail how it works consult our <a href="help">Help page</a>. </p>
             		
             		<h2>Thank You!</h2>
             		<p>Although we have try our best, we think the the app is still to be better.We greatly appreciate your support if you can spread the word and let others know about it.
					by clicking the +1button, sharing and follow us in social networks or any suggestion will be welcomed. </p>
					
					<p class="pull-right">Thanks <b>Tec-Biz</b> teams !</p>
              	</div>
              	<div class="col-md-4">
              			<h1>Features Used</h1><hr>
              			<p><span class="glyphicon glyphicon-ok-sign"></span>&nbsp;&nbsp;Google AppEngine</p>
              			<p><span class="glyphicon glyphicon-ok-sign"></span>&nbsp;&nbsp;DataStore with Objectify</p>
              			<p><span class="glyphicon glyphicon-ok-sign"></span>&nbsp;&nbsp;BlobStore</p>
              			<p><span class="glyphicon glyphicon-ok-sign"></span>&nbsp;&nbsp;Google Map API</p>
              			<p><span class="glyphicon glyphicon-ok-sign"></span>&nbsp;&nbsp;Google Places API</p>
              			<p><span class="glyphicon glyphicon-ok-sign"></span>&nbsp;&nbsp;Google Account API</p>
              			<p><span class="glyphicon glyphicon-ok-sign"></span>&nbsp;&nbsp;Google+ API<p>
              			<p><span class="glyphicon glyphicon-ok-sign"></span>&nbsp;&nbsp;YouTube API</p>
              			<p><span class="glyphicon glyphicon-ok-sign"></span>&nbsp;&nbsp;Google Gmail API</p>
              			<p><span class="glyphicon glyphicon-ok-sign"></span>&nbsp;&nbsp;Google Form</p>
              			<p><span class="glyphicon glyphicon-ok-sign"></span>&nbsp;&nbsp;Google +1Button,Share and Comment</p>
              			<p><span class="glyphicon glyphicon-ok-sign"></span>&nbsp;&nbsp;Java</p>
              			<p><span class="glyphicon glyphicon-ok-sign"></span>&nbsp;&nbsp;Servlet and JSP</p>
              			<p><span class="glyphicon glyphicon-ok-sign"></span>&nbsp;&nbsp;HTML5/CSS3</p>
              			<p><span class="glyphicon glyphicon-ok-sign"></span>&nbsp;&nbsp;Javascript</p>
              			<p><span class="glyphicon glyphicon-ok-sign"></span>&nbsp;&nbsp;JQuery</p>
              			<p><span class="glyphicon glyphicon-ok-sign"></span>&nbsp;&nbsp;AJAX</p>
              			<p><span class="glyphicon glyphicon-ok-sign"></span>&nbsp;&nbsp;Bootstrap</p>
              			
              		
              	</div>
              </div>
<!-- Place this tag where you want the widget to render. -->
<!-- <div class="g-person" data-href="//plus.google.com/u/0/103393649633218861526" data-rel="author"></div> -->
          </div>
          <br>
              <br>
              <!-- the follow block -->
              <div class="row">
              	<div class="row"><h3>Stay connected</h3> <hr></div>
              	<div class="col-md-4"><a href="#"><img class="img-thumbnail" alt="google+" src="images/g+.jpg" /></a></div><div class="col-md-4"><a href="#"><img class="img-thumbnail" alt="facebook" src="images/face.jpg" /></a></div><div class="col-md-4"><a href="#"><img class="img-thumbnail" alt="twitter" src="images/th.jpg" /></a></div>
              </div>
    </div> <!-- /container -->
    <hr>
    <footer>
        <br />
        <p class="centre">&copy; 2014 all rights reserved | <a href="suggestion">Suggestion</a> | <a  href="about"><b>About</b></a> | <a href="contact">Contact Us</a></p>
    </footer>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>








