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

		<title>new employee profile</title>

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
		
		    <script type="text/javascript">
    	if(sessionStorage.imeiNumber == 1){
    	
    	}
    	else
    		{
    			window.location = "../login";	
    		}
    	function logout()
    	{
    		sessionStorage.imeiNumber = 0;
    	}
    	
    </script>
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
        <span class="pull-left"><br><g:plusone></g:plusone></span>
				<span  class="pull-right">
						<div class="blog-masthead">
									<nav class="blog-nav">
									<a class="blog-nav-item " href="/"> 
									<span class="glyphicon glyphicon-home"> </span> Home  </a>
									<a class="blog-nav-item " href="login"> 
                  					<span class="glyphicon glyphicon-log-out"> </span> Log out </a>|
									<a class="blog-nav-item " href="dashboard">  
									<span class="glyphicon glyphicon-dashboard"> </span> Dashboard  </a>|
									<a class="blog-nav-item" href="help">  
									<span class="glyphicon glyphicon-question-sign"> </span> Help </a>
									</nav>
						</div>
				</span>
			</div>
		</div>

		<div class="container">
          <!--the row for the buttons at the top of the panel -->
              
              <div class="col-md-12">
                <div class="panel panel-info">
                  <div class="panel-heading">
                     <ul class="nav nav-tabs nav-justified">
					  <li><a href="newEmployeePersoInfo">Employee Personnal Infos</a></li>
					  <li class="active"><a href="newEmployeeProfile">Employee Profile</a></li>
					  <li><a href="newEmployeeGeoLocation">Employee Map location</a></li>
					</ul>
                  </div>
                  <div class="panel-body">
                   <form class="form-horizontal" role="form">
                   	<div class="row">
                   		<div class="col-md-3">
	                  		
	               		</div>
                   		<div class="col-md-4">
	                      	<div class="form-group">
							    <label for="exampleInputFile">Upload your profile picture</label>
							    <input type="file" id="exampleInputFile">
							    <p class="help-block">Example block-level help text here.</p>
							    <a href="newEmployeeGeoLocation">skip this process and continue </a>				
	            			</div>
	            		</div>
	               		<div class="col-md-5">
	                  		<img class="featurette-image img-responsive" data-src="holder.js/300x300/auto" alt="Generic placeholder image">
	               		</div>
             		</div>
             		<br>
                   	<p>
	                      <span class="pull-right">
	                      <button type="submit" class="btn btn-success">Continue &raquo;</button>
	                 	  </span>
	                 	  <span class="pull-left">
	                      <button type="submit" class="btn btn-danger">Cancel</button>
	                 	  </span>
	         		</p>
                </form>
             </div>
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
		<script src="js/docs.min.js"></script>
	</body>
</html>








