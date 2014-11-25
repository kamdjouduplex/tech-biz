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

    <title>Contact Us</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/jumbotron.css" rel="stylesheet">
    <style type="text/css">
     .grophone{
    	font-size:25px;
    	color:green;
      }
     .grogmail{
    	font-size:25px;
    	color:red;
      }
     .groyahoo{
    	font-size:25px;
    	color:indigo;
      }
     .grooutlook{
    	font-size:25px;
    	color:blue;
      }
    </style>

    <!-- Just for debugging purposes. Don't actually copy this line! -->
    <!--[if lt IE 9]><script src="../../assets/js/ie8-responsive-file-warning.js"></script><![endif]-->

    <!-- HTML5 shim and Respond.js IE8 support of HTML5 elements and media queries -->
    <!--[if lt IE 9]>
      <script src="https://oss.maxcdn.com/libs/html5shiv/3.7.0/html5shiv.js"></script>
      <script src="https://oss.maxcdn.com/libs/respond.js/1.4.2/respond.min.js"></script>
    <![endif]-->
    <script type="text/javascript">
    window.___gcfg = {
            lang: 'en-US'
          };
	  	(function() {
		    var po = document.createElement('script'); po.type = 'text/javascript'; po.async = true;
		    po.src = 'https://apis.google.com/js/plusone.js?onload=onLoadCallback';
		    var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(po, s);
		 })();
	</script>
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
                  
                  <a class="blog-nav-item " href="help">  
                  <span class="glyphicon glyphicon-question-sign"> </span> Help </a>
                  </nav>
            </div>
        </span>
      </div>
    </div>

    <div class="container">
      <!-- Example row of columns -->
        <div class="row" style="margin: auto">
              <div class="col-md-12">
              	<div class="row">
              		<h3>We are from the Faculty of Engineering and Technology, of the University of Buea, South West Region Cameroon</h3> 
              		<p>Motivated and interested in the use of <strong>Cloud Technology</strong> and its application to the business domain. We coined the term 'cloud business computing', which is the application of cloud tech to the business domain. 
              		 &nbsp;&nbsp;<g:plusone></g:plusone>
              		<h2>Contact us</h2>             	
              	</div>
              	<div class="row">
              		<div class="col-md-6">
              			<img class="img-circle" alt="profile" style=" width:100px; height:110px;" src="images/tony.jpg"><span>&nbsp;&nbsp;<b>Kamdjou Temfack Duplex Marie</b></span>
              			<hr>
						
						<div class="input-group">
						  <span class="glyphicon glyphicon-envelope grogmail"></span>
						  <a href="mailto:tony14pro@gmail.com">&nbsp;tony14pro@gmail.com</a>
						</div>
						<div class="input-group">
						  <span class="glyphicon glyphicon-envelope groyahoo"></span>
						  <a href="mailto:kamdjoutony@yahoo.com">&nbsp;kamdjoutony@yahoo.com</a>
						</div>
						<div class="input-group">
						  <span class="glyphicon glyphicon-envelope grooutlook"></span>
						  <a href="mailto:kamdjouduplex@outlook.com">&nbsp;kamdjouduplex@outlook.com</a>
						</div>
						<div class="input-group">
						  <span class="glyphicon glyphicon-phone grophone"></span>
						  <a href="tel:+237 70274538">&nbsp;+237 70274538</a>
						  <a href="tel:+237 95888613">&nbsp;+237 95888613</a>
						</div>
              		</div>
              		<div class="col-md-6">
              		<img class="img-circle" alt="profile" style=" width:100px; height:110px;" src="images/larrytech.jpg"><span>&nbsp;&nbsp;<b>Akah Harvey N L</b></span>
              			<hr>
						<div class="input-group">
						  <span class="glyphicon glyphicon-envelope grogmail"></span>
						  <a href="mailto:larryakah@gmail.com">&nbsp;larryakah@gmail.com</a>
                		</div>
						
						<div class="input-group">
						  <span class="glyphicon glyphicon-envelope groyahoo"></span>
						  <a href="mailto:larryakah@ymail.com">&nbsp;larryakah@ymail.com</a>
						</div>
						<div class="input-group">
						  <span class="glyphicon glyphicon-phone grophone"></span>
						  <a href="tel:+237 97950531">&nbsp;+237 97950531</a>
						</div>
              		</div>
              		</div>
              	</div>
              </div><br>
              <br>
              <br>
              <!-- the follow block -->
              <div class="row">
              	<div class="row"><h2>Follow us on social networks</h2> <hr></div>
              	<div class="col-md-4"><a href="#"><img class="img-thumbnail" alt="google+" src="images/g+.jpg" /></a></div><div class="col-md-4"><a href="#"><img class="img-thumbnail" alt="facebook" src="images/face.jpg" /></a></div><div class="col-md-4"><a href="#"><img class="img-thumbnail" alt="twitter" src="images/th.jpg" /></a></div>
              </div>
          </div>
    </div> <!-- /container -->
    <hr>
    <footer>
        <br />
        <p class="centre">&copy; 2014 all rights reserved | <a href="suggestion">Suggestion</a> | <a href="about">About</a> | <a href="contact"><b>Contact Us</b></a></p>
    </footer>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>








