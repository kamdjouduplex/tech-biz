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

    <title>Suggestions</title>

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
        <div class="row" >
              <p style=" text-align:center;">The application is built for you. Hence all you suggestions on how to improve are welcome! &nbsp;&nbsp;<g:plusone></g:plusone></p>
              <div class="panel-body">
                   <form class="form-horizontal" action="" method ="post" role="form">
                   	<div class="row">
                   	
	               <div class="col-md-10">
	                <div class="form-group">
	                    <label for="inputEmail3"  class="col-sm-2 control-label">Your Email</label>
	                    <div class="col-sm-10">
	                      <input type="email" class="form-control" name="sender_email" value="<%= userService.getCurrentUser().getEmail() %>" id="inputEmail3" required="required" readonly/>
	                    </div>
	                  </div>
	                 <div class="form-group">
	                  <label for="cat" class="col-sm-2 control-label">Country</label>
	                   <div class="col-sm-10">
	                   <select name="sender_country" class="form-control" required>
						  <option value="Cameroon">Cameroon</option>
						  <option value="France">France</option>
						  <option value="USA">Usa</option>
						  <option value="Germany">Germany</option>
						  <option value="Australia">Australia</option>
						  <option value="Ghana">Ghana</option>
				       </select>
	                    </div>
	                  </div>
	                  <div class="form-group">
	                    <label for="inputEmail3" class="col-sm-2 control-label">Suggestion</label>
	                    <div class="col-sm-10">
	                      <textarea class="form-control" rows="5" name="sender_suggestion" placeholder="Enter your suggestion here" required></textarea>
	                    </div>
	                  </div>
             		</div>
             		</div>
             		<br>
                   	<p>
	                      <span class="pull-right">
	                      <button type="submit" class="btn btn-success"> Send Suggestion &raquo;</button>
	                 	  </span>
	                 	  <span class="pull-left">
	                      <button type="reset" class="btn btn-danger">Reset</button><span align="right"><% request.getAttribute("error_message"); %></span>
	                 	  </span>
	         		</p>
                </form>
               </div>
          </div>
          <br>
              <br>
              <!-- the follow block -->
              <div class="row">
              	<div class="row"><h2>Follow us on social networks</h2> <hr></div>
              	<div class="col-md-4"><a href="#"><img class="img-thumbnail" alt="google+" src="images/g+.jpg" /></a></div><div class="col-md-4"><a href="#"><img class="img-thumbnail" alt="facebook" src="images/face.jpg" /></a></div><div class="col-md-4"><a href="#"><img class="img-thumbnail" alt="twitter" src="images/th.jpg" /></a></div>
              </div>
    </div> <!-- /container -->
    <hr>
    <footer>
        <br />
        <p class="centre">&copy; 2014 all rights reserved | <a href="suggestion"><b>Suggestion</b></a> | <a href="about">About</a> | <a href="contact">Contact Us</a></p>
    </footer>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="js/bootstrap.min.js"></script>
  </body>
</html>