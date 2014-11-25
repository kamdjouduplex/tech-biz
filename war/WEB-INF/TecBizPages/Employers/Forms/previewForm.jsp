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

    <title>Preview Form</title>

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
        <p Style=" color:#fff"><b>Hi, &nbsp;</b><%= userService.getCurrentUser().getNickname() %>&nbsp;
        
        <a type="button" class="btn btn-default" href="<%= userService.createLogoutURL("/home") %>" data-toggle="tooltip" data-placement="left" title="Sign out"><span class="glyphicon glyphicon-log-out"></span></a></p>
        
        <% } %>
        </span>
        
        <h1><img class="img-circle" alt="logo" src="images/busii.jpg"><b>TEC-BIZ</b></h1>
        <span  class="pull-right">
            <div class="blog-masthead">
                                    <nav class="blog-nav">
                                    <a class="blog-nav-item " href="dashboard"> 
                                    <span class="glyphicon glyphicon-dashboard"> </span> Dashboard  </a>|
                                    <a class="blog-nav-item active" href="newEmployeePersoInfo">  
                                    <span class="glyphicon glyphicon-filer"> </span> Form Preview</a>|
                                    <a class="blog-nav-item " href="login" onclick="logout()">  
                                    <span class="glyphicon glyphicon-log-out"> </span> Log out </a>|                                    
                                    <a class="blog-nav-item" href="help">  
                                    <span class="glyphicon glyphicon-question-sign"> </span> Help </a>
                                    </nav>
                        </div>
        </span>
      </div>
    </div>

     <div class="container formresult" style="border: solid 2px #555; padding:20px;">
        <form id="target" class="form-horizontal" action="" method="post">
 
           
              <input type="hidden" id="formdata" name="formdata" value="" />
               <input type="hidden" id="owner" name="owner" value="<%= userService.getCurrentUser().getEmail() %>"/>
                <input type="hidden" id="ftitle" name="ftitle" value="" />
           
             <button type="button" onclick="javascript:window.location='formCreation'" class="btn btn-warning pull-left" id="back">&laquo; Back</button>
             <button type="submit" class="btn btn-success pull-right" id="confirm">Confirm & Save</button>
                
    </form>
    </div> <!-- /container -->
    <div class="form-actions" style="margin-top:20px;">
 
</div>
    <hr>
      <footer>
        <br />
        <p class="centre">&copy; 2014 all rights reserved | <a href="suggestion">Suggestion</a> | <a href="about">About</a> | <a href="contact">Contact Us</a></p>
    </footer>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="js/jquery.js"></script>
    <script src="js/bootstrap.min.js"></script>
     <script type="text/javascript">
        try{
      //  $("div.formresult").html(sessionStorage.formdata);
     $("#back").before(sessionStorage.formdata);
     $("input#formdata").val(sessionStorage.formdata);
     $("input#ftitle").val(sessionStorage.ftitle);
      //  alert(sessionStorage.ftitle);
        }
        catch(err)
        {
            alert(err);
        }
        
        var formReq =new XMLHttpRequest();
        
        function sendForm()
        {
        //    formReq = new XMLHttpRequest();
            formReq.open("POST", "help", true);
            formReq.send("formdata",sessionStorage.formdata);
        }
        
        formReq.onreadeystatechange = function(){
            if(formReq.status == 200)
            switch(formReq.readyState)
            {
            case 2:
                //
                break;
            case 3:
                //
                break;
            case 4: //OK
                //
                break;
                default:
                    break;
            }
        }
        $("input:submit").click(sendForm());
        </script>
  </body>
</html>








