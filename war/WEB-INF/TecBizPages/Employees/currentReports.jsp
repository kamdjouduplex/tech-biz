<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.google.appengine.api.users.*" %>
<% UserService userService = UserServiceFactory.getUserService(); %>
<%@ page import="java.util.List" %>
 <%@ page import="technologyBusiness.Forms" %>

<!DOCTYPE html >
<html lang="en">
  <head>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <meta name="description" content="">
    <meta name="author" content="">
    <link rel="shortcut icon" href="favicon.ico">

    <title>List of all your repprot</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/jumbotron.css" rel="stylesheet">
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
                  <a class="blog-nav-item active" href="#"> 
                  <span class="glyphicon glyphicon-home"> </span> Home  </a>|
                  <a class="blog-nav-item " href="login"> 
                  <span class="glyphicon glyphicon-log-out"> </span> Log out </a>|
                  
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
          <!--the row for the buttons at the top of the panel -->
              
              <br />
          <!-- the left vertical menu -->
              <div class="col-md-3 ">
                  <ul class="nav nav-sidebar">
                    <li><a href="pendingReports">Pending Reports</a></li>
                    <li class="active"><a href="currentReports"><span class="pull-right"><span class="glyphicon glyphicon-chevron-right"></span></span>Current Reports</a></li>
                    <li><a href="report_forms">Report Forms</a></li>                    
                    
                  </ul>
              </div>
          <!-- the right panel of the dashboard -->
              <div class="col-md-9">
          <div class="table-responsive">
            <table class="table table-striped">
              <thead>
                <tr>
                  <th><label>
                        <input type="checkbox"> select all
                      </label>
                    </th>
                  <th>Report Name</th>
                  <th>Date & Time</th>
                  <th>Boss</th>
                  <th>Business </th>
                  <th>delete</th>
                </tr>
              </thead>
              <tbody>
              <% List<Forms> forms = (List<Forms>)request.getAttribute("myforms");
                for(Forms myform : forms){
                	if(myform.getFormName().equals(new String("Google Form") ) ){
              %>
                <tr class="info">
                  <td><input type="checkbox"></td>
                  <td><a href='report_forms?sheet=<%= myform.getForm() %>'><%= myform.getFormName() %></a></td>
                  <td><%= myform.getFormDate() %></td>
                  <td><%= myform.getFormOwner() %></td>
                  <td>Hello Cyber</td>
                  <td><a href="#">
                    <span class="glyphicon glyphicon-trash">
                    </span> delete</a>
                  </td>
                </tr>
                <%} else{%>
                                <tr class="info">
                  <td><input type="checkbox"></td>
                  <td><a href="#"><%= myform.getFormName() %></a></td>
                  <td><%= myform.getFormDate() %></td>
                  <td><%= myform.getFormOwner() %></td>
                  <td>Hello Cyber</td>
                  <td><a href="#">
                    <span class="glyphicon glyphicon-trash">
                    </span> delete</a>
                  </td>
                </tr>
                <%} %>
            <%} %>
              </tbody>
            </table>
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
  </body>
</html>








