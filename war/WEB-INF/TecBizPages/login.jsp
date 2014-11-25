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

    <title>login</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/jumbotron.css" rel="stylesheet">
    <script>
    	function saveLog()
    	{
    		sessionStorage.imeiNumber =  1;
    		return true;
    	}
    </script>

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
                  <!-- <a class="blog-nav-item " href="/"> 
                  <span class="glyphicon glyphicon-home">&nbsp;</span>Home  </a>| -->
                  <a class="blog-nav-item active" href="login">  
                  <span class=" glyphicon glyphicon-log-in">&nbsp;</span>Sign  in  </a>|
                  <a class="blog-nav-item" href="newAccount">  
                  <span class="glyphicon glyphicon-plus">&nbsp;</span>Create an Acount  </a>|
                  <a class="blog-nav-item" href="help">  
                  <span class="glyphicon glyphicon-question-sign">&nbsp;</span>Help </a>
                  </nav>
            </div>
        </span>
      </div>
    </div>

    <div class="container">
      <!-- Example row of columns -->
        <div class="row">
              <div class="col-md-7">
                  <div class="col-md-5">
                  <a href="newAccount" class="btn btn-success btn-lg btn-block">
                        <span class="glyphicon glyphicon-plus"></span>
                        Create an acount</a>
                  </div>
                  <br /><br /><br /><br />
                  <h1>Enjoy !</h1>
                  <hr>
                  <span class="rezise">Create your account to start control the status your businesses if you  don't have one or login from the form in your right to access your dashboard. 
                  &nbsp;&nbsp;<g:plusone></g:plusone>
                  </span>
              </div>
        
              <div class="col-md-5">
                <div class="panel panel-primary">
                  <div class="panel-heading">
                        <h3 class="panel-title"><span class="glyphicon glyphicon-log-in"> </span>&nbsp;&nbsp; Sign in as Employer or Employee</h3>
                  </div>
                  <div class="panel-body">
                   <form class="form-horizontal" role="form" method="post" action="" onSubmit="saveLog()">
                  <div class="form-group">
                    <label for="inputEmail3" class="col-sm-2 control-label" >email</label>
                    <div class="col-sm-10">
                      <input type="email" name="name" class="form-control" value="<%= userService.getCurrentUser().getEmail() %>" id="inputEmail3" readonly>
                    </div>
                  </div>
                  <div class="form-group">
                    <label for="inputPassword3" class="col-sm-2 control-label">Password</label>
                    <div class="col-sm-10">
                      <input type="password" name="password" class="form-control" id="inputPassword3" placeholder="your password" required>
                    </div>
                  </div>
                  <div class="form-group">
                  	<label for="inputPassword3" class="col-sm-2 control-label">Role</label>
                    <div class="col-sm-10">
                      <select class="form-control" name="role">
                      	<option value="employer">Employer</option>
                      	<option value="employee">Employee</option>
                      </select>
                    </div>
                  </div>
                  <div class="form-group">
                    <div class="col-sm-offset-2 col-sm-10">
                      <button type="submit" class="btn btn-default">Sign in</button>
                    </div>
                  </div>
                </form>
             </div>
                  <div class="panel-footer">try again in case of wrong information</div>
            </div>  
         </div>
      </div>

      

      
      </div>
      <hr>
       <!-- /container -->
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








