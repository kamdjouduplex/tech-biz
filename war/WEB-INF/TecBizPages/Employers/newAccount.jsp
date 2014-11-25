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

		<title>New business Infos</title>

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
									<span class="glyphicon glyphicon-home"> </span> Home </a>|
									
									<a class="blog-nav-item active " href="newAccount">  
									<span class="glyphicon glyphicon-plus"> </span> Create an account  </a>|
									<a class="blog-nav-item " href="login"> 
									<span class="glyphicon glyphicon-log-in"> </span> Sign in  </a>|
									
									<a class="blog-nav-item" href="help">  
									<span class="glyphicon glyphicon-question-sign"> </span> Help </a>
									</nav>
						</div>
				</span>
			</div>
		</div>

		<div class="container">
          <!--the row for the buttons at the top of the panel -->
              <div class="row">
               
              </div>
              <div class="col-md-12">
                <div class="panel panel-info">
                 <!--  <div class="panel-heading">
                    <ul class="nav nav-tabs nav-justified">
					  <li class="active"><a href="newAccount">Business Personnal Infos</a></li>
					  <li><a href="#">Business Profile</a></li>
					  <li><a href="#">Business Map location</a></li>
					</ul>
                  </div> -->
                  <div class="panel-body">
                   <form class="form-horizontal" action="" method="post" role="form">
                   	<div class="row">
                   	<div class="col-md-6">
	                  <div class="form-group">
	                    <label for="inputEmail3" class="col-sm-3 control-label">Full Name</label>
	                    <div class="col-sm-10">
	                      <input type="text" class="form-control" required="required" id="inputEmail3" name="fname" placeholder="your Name">
	                    </div>
	                  </div>
	                  
	                  <div class="form-group">
	                    <label for="inputEmail3" class="col-sm-3 control-label">Address</label>
	                    <div class="col-sm-10">
	                      <input type="text" class="form-control" id="inputEmail3" required="required" name="address" placeholder="your home address">
	                    </div>
	                  </div>
	                  
	                  <div class="form-group">
	                    <label for="inputEmail3" class="col-sm-3 control-label">Password</label>
	                    <div class="col-sm-10">
	                      <input type="password" class="form-control" id="password" required="required" name="password" placeholder="your password 6 character minimum">
	                    </div>
	                  </div>
	                  
	               </div>
	               <div class="col-md-6">
	                  
	                  <div class="form-group">
	                    <label for="inputEmail3" class="col-sm-3 control-label">Email</label>
	                    <div class="col-sm-10">
	                      <input type="email" class="form-control" value="<%= userService.getCurrentUser().getEmail() %>" id="inputEmail3" required="required" name="email" readonly/>
	                    </div>
	                  </div>
	                  <div class="form-group">
	                    <label for="inputPassword3" class="col-sm-3 control-label">Phone</label>
	                    <div class="col-sm-10">
	                      <input type="tel" id="phone" name="phone" class="input-xlarge form-control" type="text" data-validation-regex-regex="^[2-9]{1}[0-9]{9}$" data-validation-regex-message="Should be 10 digit long and should not start with 0/1" required>
	                    </div>
	                  </div>
	                  <div class="form-group">
	                    <label for="inputEmail3" class="col-sm-3 control-label">Confirm </label>
	                    <div class="col-sm-10">
	                      <input type="password" class="form-control" id="confirm" required="required" placeholder="confirm the password">
	                    </div>
	                  </div>
	                 
             		</div>
             		</div>
             		<br>
                   	<p>
	                      <span class="pull-right">
	                      <button type="submit" class="btn btn-success"><span class="glyphicon glyphicon-plus"> </span> Create </button>
	                 	  </span>
	                 	  
	                 	  <span class="pull-left">
	                      <button type="reset"  class="btn btn-danger">Reset</button>
	                 	  </span><p class="col-md-8 err"> <button type="button" class="close" data-dismiss="alert" aria-hidden="true">&times;</button></p>
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
		<script src="js/jquery.js"></script>
		<script src="js/jsBootStrapValidation.js"></script>
		<script>
           $(document).ready(function(){ $(".err").hide();});
           $("#password").bind("keyup",function(){
        	   var p = $("#password").val();
        	   var c = $("#confirm").val();
        	   try{
        		   //if(c.length == 6){ $(".err").html("");} 
        	   if(p.length > 6){
        		  
        	   if(p != c)
        		   {
        		   	$(".err").html("<strong>Password Mismatch. Please Correct this.</strong>");
        		   	$(".err").css("color","red");
        		   	$(".err").show("slow");
        		   }
        	   else
        		   {
        		   $(".err").css("color","green");
        		   $(".err").show("slow");
        		   $(".err").html("OK! Passwords match");
        		   }
        	   }
        	   else
        		   {
        		   $(".err").show("slow");
        		   $(".err").html("<strong>Password must be greater than 6 characters</strong>");
        		   }
        	   }
        	   catch(err)
        	   {
        		   alert(err);
        	   }
           });
           $("#confirm").bind("keyup",function(){
        	   var p = $("#password").val();
        	   var c = $("#confirm").val();
        	   try{
        		   
        	   if(c.length > 6){
        		   
        	   if(p != c)
        		   {
        		   	$(".err").html("<strong>Password Mismatch. Please Correct this.</strong>");
        		   	$(".err").css("color","red");
        		   	$(".err").show("slow");
        		   }
        	   else
        		   {
        		   $(".err").css("color","green");
        		   $(".err").show("slow");
        		   $(".err").html("OK! Passwords match");
        		   }
        	   }
        	   else
        		   {
        		   $(".err").show("slow");
        		   $(".err").html("<strong>Password must be greater than 6 characters</strong>");
        		   }
        	   }
        	   catch(err)
        	   {
        		   alert(err);
        	   }
           });
        </script>
	</body>
</html>








