<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.google.appengine.api.users.*" %>
<% UserService userService = UserServiceFactory.getUserService(); %>

<!DOCTYPE html>
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="favicon.ico">

    <title>Home</title>

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
     <!-- Place this tag in your head or just before your close body tag. -->
	<script src="https://apis.google.com/js/platform.js" async defer></script>
	
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
        <h1><img class="img-circle" alt="logo" src="images/busii.jpg"><b>TEC-BIZ</b></h1>
        <span class="pull-left"><h3>Is an application that allows business persons to control the status <br />
         of their businesses from every where &nbsp;&nbsp;<g:plusone></g:plusone> </h3></span>
        <span class="pull-right">
            <!--<div class="blog-masthead">
                  <nav class="blog-nav">
                   <a class="blog-nav-item active" href="/"> -->
                    
                  <a href="login"><img width="300" src="images/sign-in-with-google.png" alt="Sign-In with Google" ></a>
              
        </span>
      </div>
    </div>

    <div class="container">
      <!-- Example row of columns -->
      <div class="row">
        <div class="col-md-8" >
		<span class="centre">
        <object width="640" height="360">
          <param name="movie" value="https://www.youtube.com/v/M7lc1UVf-VE?version=3"></param>
          <h1 class="carousel-caption">Quick Start Video</h1>
          <param name="allowFullScreen" value="true"></param>
          <param name="allowScriptAccess" value="always"></param>
          <embed src="https://www.youtube.com/v/M7lc1UVf-VE?version=3" type="application/x-shockwave-flash" allowfullscreen="true" allowScriptAccess="always" width="640" height="360"></embed>
          </object>
          </span>
          <!-- <h2 class="centre">Please watch this Video for quick Start </h2> -->
        </div>
        
        <div class="col-md-4"> 
            <!-- Place this tag where you want the widget to render. -->
			<div class="g-person" data-href="//plus.google.com/u/0/103393649633218861526" data-rel="author"></div>
            
        </div>
      </div>

      

      
      </div> <!-- /container -->
      <hr>
      <footer>
        <br />
        <p class="centre">&copy; 2014 all rights reserved | <a href="suggestion">Suggestion</a> | <a href="about">About</a> | <a href="contact">Contact Us</a></p>
    </footer>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>
