<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.google.appengine.api.users.*" %>
<% UserService userService = UserServiceFactory.getUserService(); %>

<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="utf-8">
  <title>Create forms</title>
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <meta name="description" content="Create easy forms; easily.">
  
    <!--<script type="text/javascript" src="//ajax.googleapis.com/ajax/libs/jquery/1.7.0/jquery.min.js"></script>-->
    <script type="text/javascript" src="css/jquery.min.js"></script>
    <script type="text/javascript">
      var _gaq = _gaq || [];
      _gaq.push(['_setAccount', 'UA-35328807-1']);
      _gaq.push(['_trackPageview']);

      (function() {
        var ga = document.createElement('script'); ga.type = 'text/javascript'; ga.async = true;
        ga.src = ('https:' == document.location.protocol ? 'https://ssl' : 'http://www') + '.google-analytics.com/ga.js';
        var s = document.getElementsByTagName('script')[0]; s.parentNode.insertBefore(ga, s);
      })();
    </script>
    <!--[if lt IE 9]>
    <script src="//html5shim.googlecode.com/svn/trunk/html5.js"></script>
    <![endif]-->
  
  <link rel="shortcut icon" href="/favicon.ico">
  <link rel="icon" href="/favicon.ico" type="image/ico" />
  <link rel="shortcut icon" href="/favicon.ico" type="image/ico" />

  
  <link rel="stylesheet" href="css/jquery-ui.css" />
  <link href="css/bootstrap.min.css" rel="stylesheet">
  <!-- <link href="css/bootstrapp.css" rel="stylesheet"> -->
  <link href="css/bootstrap.css" rel="stylesheet">
  <link href="css/bootstrap-responsive.css" rel="stylesheet">
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
  <style type="text/css">
    .button {
      display: inline-block;
      zoom: 1; /* zoom and *display = ie7 hack for display:inline-block */
      *display: inline;
      vertical-align: baseline;
      margin: 38px 2px 2px;
      outline: none;
      cursor: pointer;
      text-align: center;
      text-decoration: none;
      font: 20px/100% "Helvetica Neue",Arial,Helvetica,Geneva,sans-serif!important;
      padding: .5em 2em .55em;
      text-shadow: 0 1px 1px rgba(0,0,0,.3);
      -webkit-border-radius: .5em;
      -moz-border-radius: .5em;
      border-radius: .5em;
      -webkit-box-shadow: 0 1px 2px rgba(0,0,0,.2);
      -moz-box-shadow: 0 1px 2px rgba(0,0,0,.2);
      box-shadow: 0 1px 2px rgba(0,0,0,.2);
    }
    .button:hover {
      text-decoration: none;
    }
    .button:active {
      position: relative;
      top: 1px;
    }
    .gray {
      color: #e9e9e9;
      border: solid 1px #555;
      background: #6e6e6e;
      background: -webkit-gradient(linear, left top, left bottom, from(#888), to(#575757));
      background: -moz-linear-gradient(top,  #888,  #575757);
      filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#888888', endColorstr='#575757');
    }
    .gray:hover {
      background: #616161;
      background: -webkit-gradient(linear, left top, left bottom, from(#757575), to(#4b4b4b));
      background: -moz-linear-gradient(top,  #757575,  #4b4b4b);
      filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#757575', endColorstr='#4b4b4b');
    }
    .gray:active {
      color: #afafaf;
      background: -webkit-gradient(linear, left top, left bottom, from(#575757), to(#888));
      background: -moz-linear-gradient(top,  #575757,  #888);
      filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#575757', endColorstr='#888888');
    }

    /* white */
    .white {
      color: #606060;
      border: solid 1px #b7b7b7;
      background: #fff;
      background: -webkit-gradient(linear, left top, left bottom, from(#fff), to(#ededed));
      background: -moz-linear-gradient(top,  #fff,  #ededed);
      filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffff', endColorstr='#ededed');
    }
    .white:hover {
      background: #ededed;
      background: -webkit-gradient(linear, left top, left bottom, from(#fff), to(#dcdcdc));
      background: -moz-linear-gradient(top,  #fff,  #dcdcdc);
      filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#ffffff', endColorstr='#dcdcdc');
    }
    .white:active {
      color: #999;
      background: -webkit-gradient(linear, left top, left bottom, from(#ededed), to(#fff));
      background: -moz-linear-gradient(top,  #ededed,  #fff);
      filter:  progid:DXImageTransform.Microsoft.gradient(startColorstr='#ededed', endColorstr='#ffffff');
    }
    .social{line-height:36px!important;min-height:36px!important;height:36px;display:block;float:left;margin:0 0 0 30px}
    .social img{position:relative;top:0;left:0}
    .social.facebook img{top:1px!important}
    .social.facebook{background:url(/images/social-icons/facebook-bw.png) left center no-repeat;width:25px}
    .social.twitter{background:url(/images/social-icons/twitter-bw.png) left center no-repeat;width:37px}
    .social.googleplus{background:url(/images/social-icons/gplus-bw.png) left center no-repeat;width:30px}
    .social.facebook:hover {background-image: url(/images/social-icons/facebook.png);}
    .social.twitter:hover {background-image: url(/images/social-icons/twitter.png);}
    .social.googleplus:hover {background-image: url(/images/social-icons/gplus.png);}

  </style>
  <style>
    #components{
      min-height: 300px;
    }
    #target{
      min-height: 200px;
      border: 1px solid #ccc;
      padding: 5px;
    }
    #target .component{
      border: 1px solid #fff;
    }
    #temp{
      width: 500px;
      background: white;
      border: 1px dotted #ccc;
      border-radius: 10px;
    }

    .popover-content 
 {
      margin: 0 auto;
      width: 213px;
    }
    .popover-content form .btn{
      margin-right: 10px
    }
    /*self defined start*/
    #target .page-break,#temp .page-break{
      border: 1px dashed;
    }
    #source{
      min-height: 500px;
    }

    #footer{font-family:  'Lucida Sans Unicode', 'Lucida Grande', sans-serif;font-size: 12px;padding:20px 0 0 0;color:#6f6f6f;line-height:24px; position: fixed;bottom: 0;left: 0;width: 100%;background:#f2f2f2;border-top:1px solid #ededed}

    #footer-right{float:right;text-align:right;line-height:26px}

    .navbar-fixed-top .brand {
      padding-right: 0;
      padding-left: 0;
      margin-left: 0;
      font-weight: bold;
      color: #000;
      text-shadow: 0 1px 0 rgba(255,255,255,.1), 0 0 30px rgba(255,255,255,.125);
      -webkit-transition: all .2s linear;
      -moz-transition: all .2s linear;
      transition: all .2s linear;
    }
    .bottom-ad{
      margin-bottom: 90px;
    }
    .ad-container{
      text-align: center
    }

  </style>
  
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
                  <a class="blog-nav-item" href="dashboard">  
                  <span class="glyphicon glyphicon-dashboard"> </span> Dashboard  </a>|
                  <a class="blog-nav-item active" href="login"> 
                  <span class="glyphicon glyphicon-file"> </span> Create</a>|
                  <a class="blog-nav-item " href="formCreation" onclick="logout()"> 
                  <span class="glyphicon glyphicon-log-out"> </span> Log out </a>|
                  <a class="blog-nav-item" href="help">  
                  <span class="glyphicon glyphicon-question-sign"> </span> Help </a>
                  </nav>
            </div>
        </span>
      </div>
    </div>
    <script>
    $(document).ready(function(){
      $("#formbuilder").addClass("active");
    });
    </script>   
<div class="container">
<div class="row fluid">
<script type="text/javascript">
$(document).ready(function(){

  $("#home").addClass("active");
  $("[rel='tooltip']").tooltip();

});

</script>



<div class="span7" style="margin-bottom:100px">
  <div class="clearfix">
<p>You Can use this in-built form Builder or use Google Forms to create your form, but Note that you will have to copy the link from Google forms and paste it in the box below</p>
    <h2>Your Form  <a class="bnt bnt-lg btn-primary pull-right" href="https://docs.google.com/forms" target="_blank">Create On Google Forms</a></h2>
   <form class="form-vertical" role="form" action="" method="post">
              
               <input type="hidden" id="owner" name="owner" value="<%= userService.getCurrentUser().getEmail() %>"/>
               <input type="hidden" id="ftitle" name="ftitle" value="Google Form" />
               <input type="text" class='form-control'  id="formlnk" name="formlnk" placeholder="Enter Google Form Link here"/>
        <!--  Form submission Button. Submits a Google form link to the datastore -->
                <input type="submit" id="sendform" class="btn btn-success" name="sendform" />
   </form>
    <hr>
    <div id="build">
      
      <form id="target" class="form-horizontal" action="" method="post">
        <fieldset id="maincontent">
          <div id="legend" class="component maincontent" rel="popover" title="Form Title" trigger="manual"
          data-content="
          <form class='form'>
            <div class='controls'>
              <label class='control-label'>Title</label> <input class='input-large' type='text' name='title' id='text'>
              <hr/>
              <button class='btn btn-info'>Save</button><button class='btn btn-danger'>Cancel</button>
            </div>
          </form>"
          >
          <legend class="valtype formtitle" data-valtype="text">Untitled Form</legend>                      
        </div>

        <!--test-->

      </fieldset>
    </form>
    
  </div>
</div>
<!--The button that submits the built form -->
<div class="form-actions" style="margin-top:20px;">
  <button type="submit" class="btn btn-warning pull-left" id="clearf">Clear Form</button>
   
  <button type="submit" class="btn btn-success pull-right" id="createf">Preview Form</button> 
  
</div>
</div>



        

    <div class="span4">
      <h2>Drag & Drop components</h2>
      <hr>

      <div class="tab bable">
        <ul class="nav nav-tabs nav-justified" id="navtab">
          <li class="active"><a href="#1" data-toggle="tab">Input</a></li>
          <li class><a href="#2" data-toggle="tab">Select</a></li>
          <li class><a href="#3" data-toggle="tab">Chkbx/Radio</a></li>
          <li class><a href="#4" data-toggle="tab">F Upload</a></li>
         <!--  <li class><a href="#5" data-toggle="tab">Structure</a></li> -->
        </ul>
        <form class="form-horizontal" role="form" id="components">
          <fieldset>
            <div class="tab-content">

              <div class="tab-pane active" id="1">

                <div class="control-group component" data-type="text" rel="popover" title="Text Input" trigger="manual"
                data-content="
                <form class='form'>
                  <div class='controls'>
                    <label class='control-label'>Label Text</label> <input class='input-large' type='text' name='label' id='label'>
                    <label class='control-label'>Placeholder</label> <input type='text' name='placeholder' id='placeholder'>
                    <label class='control-label'>Help Text</label> <input type='text' name='help' id='help'>
                    <label class='checkbox'><input type='checkbox' name='required' id='required'>Required</label>
                    <hr/>
                    <button class='btn btn-info'>Save</button><button class='btn btn-danger'>Cancel</button>
                  </div>
                </form>"
                >

                <!-- Text input-->
                <label class="control-label valtype" data-valtype='label'>Text input</label>
                <div class="controls">
                  <input type="text" placeholder="placeholder" class="form-control" data-valtype="placeholder" >
                  <p class="help-block valtype" data-valtype='help'>Supporting help text</p>
                </div>
              </div>

              <div class="control-group component" data-type="prep-text" rel="popover" title="Prepended Text Input" trigger="manual"
              data-content="
              <form class='form'>
                <div class='controls'>
                  <label class='control-label'>Label Text</label> <input class='input-large' type='text' name='label' id='label'>
                  <label class='control-label'>Prepend</label> <input type='text' name='prepend' id='prepend'>
                  <label class='control-label'>Placeholder</label> <input type='text' name='placeholder' id='placeholder'>
                  <label class='control-label'>Help Text</label> <input type='text' name='help' id='help'>
                  <label class='checkbox'><input type='checkbox' name='required' id='required'>Required</label>
                  <hr/>
                  <button class='btn btn-info'>Save</button><button class='btn btn-danger'>Cancel</button>
                </div>
              </form>"
              >

              <!-- Prepended text-->
              <label class="control-label valtype" data-valtype="label">Prepended text</label>
              <div class="controls">
                <div class="input-group">
                  <span class="input-group-addon valtype" data-valtype="prepend">some text</span>
                  <input class="form-control valtype" placeholder="placeholder" id="prependedInput" type="text" data-valtype="placeholder">
                </div>
                <p class="help-block valtype" data-valtype="help">Supporting help text</p>
              </div>

            </div>

            <div class="control-group component" data-type="app-text" rel="popover" title="Appended Text Input" trigger="manual"
            data-content="
            <form class='form'>
              <div class='controls'>
                <label class='control-label'>Label Text</label> <input class='input-large' type='text' name='label' id='label'>
                <label class='control-label'>Appepend</label> <input type='text' name='append' id='append'>
                <label class='control-label'>Placeholder</label> <input type='text' name='placeholder' id='placeholder'>
                <label class='control-label'>Help Text</label> <input type='text' name='help' id='help'>
                <label class='checkbox'><input type='checkbox' name='required' id='required'>Required</label>
                <hr/>
                <button class='btn btn-info'>Save</button><button class='btn btn-danger'>Cancel</button>
              </div>
            </form>"
            >

            <!-- Appended input-->
            <label class="control-label valtype" data-valtype="label">Appended text</label>
            <div class="controls">
              <div class="input-group">
                <input class="form-control valtype" data-valtype="placeholder" placeholder="placeholder" type="text">
                <span class="input-group-addon valtype" data-valtype="append">some text</span>
              </div>
              <p class="help-block valtype" data-valtype="help">Supporting help text</p>
            </div>

          </div>

          <div class="control-group component" rel="popover" title="Text Area" trigger="manual"
          data-content="
          <form class='form'>
            <div class='controls'>
              <label class='control-label'>Label Text</label> <input class='input-large' type='text' name='label' id='label'>
              <label class='checkbox'><input type='checkbox' name='required' id='required'>Required</label>
              <hr/>
              <button class='btn btn-info'>Save</button><button class='btn btn-danger'>Cancel</button>
            </div>
          </form>"
          >

          <!-- Textarea -->
          <label class="control-label valtype" data-valtype="label">Textarea</label>
          <div class="controls">
            <div class="textarea">
              <textarea type="" class="form-control valtype" data-valtype="checkbox" /> </textarea>
            </div>
          </div>
        </div>

      </div>

      <div class="tab-pane" id="2">

        <div class="control-group component" rel="popover" title="Basic Select" trigger="manual"
        data-content="
        <form class='form'>
          <div class='controls'>
            <label class='control-label'>Label Text</label> <input class='input-large' type='text' name='label' id='label'>
            <label class='control-label'>Options: </label>
            <textarea style='min-height: 200px' id='option'></textarea>
            <hr/>
            <button class='btn btn-info'>Save</button><button class='btn btn-danger'>Cancel</button>
          </div>
        </form>"
        >

        <!-- Select Basic -->
        <label class="control-label valtype" data-valtype="label">Select - Basic</label>
        <div class="controls">
          <select class="form-control valtype" data-valtype="option">
            <option>Enter</option>
            <option>Your</option>
            <option>Options</option>
            <option>Here!</option>
          </select>
        </div>

      </div>

      <div class="control-group component" rel="popover" title="Multiple Select" trigger="manual"
      data-content="
      <form class='form'>
        <div class='controls'>
          <label class='control-label'>Label Text</label> <input class='input-large' type='text' name='label' id='label'>
          <label class='control-label'>Options: </label>
          <textarea style='min-height: 200px' id='option'></textarea>
          <hr/>
          <button class='btn btn-info'>Save</button><button class='btn btn-danger'>Cancel</button>
        </div>
      </form>"
      >

      <!-- Select Multiple -->
      <label class="control-label valtype" data-valtype="label">Select - Multiple</label>
      <div class="controls">
        <select class="form-control valtype" multiple="multiple" data-valtype="option">
          <option>Enter</option>
          <option>Your</option>
          <option>Options</option>
          <option>Here!</option>
        </select>
      </div>
    </div>

  </div>

  <div class="tab-pane" id="3">

    <div class="control-group component" rel="popover" title="Multiple Checkboxes" trigger="manual"
    data-content="
    <form class='form'>
      <div class='controls'>
        <label class='control-label'>Label Text</label> <input class='input-large' type='text' name='label' id='label'>
        <label class='control-label'>Options: </label>
        <textarea style='min-height: 200px' id='checkboxes'> </textarea>
        <hr/>
        <button class='btn btn-info'>Save</button><button class='btn btn-danger'>Cancel</button>
      </div>
    </form>"
    >
    <label class="control-label valtype" data-valtype="label">Checkboxes</label>
    <div class="controls valtype" data-valtype="checkboxes">

      <!-- Multiple Checkboxes -->
      <label class="checkbox">
        <input type="checkbox" value="Option one">
        Option one
      </label>
      <label class=" checkbox">
        <input type="checkbox" value="Option two">
        Option two
      </label>
    </div>

  </div>

  <div class="control-group component" rel="popover" title="Multiple Radios" trigger="manual"
  data-content="
  <form class='form'>
    <div class='controls'>
      <label class='control-label'>Label Text</label> <input class='input-large' type='text' name='label' id='label'>
      <label class='control-label'>Options: </label>
      <textarea style='min-height: 200px' id='radios'></textarea>
      <hr/>
      <button class='btn btn-info'>Save</button><button class='btn btn-danger'>Cancel</button>
    </div>
  </form>"
  >
  <label class="control-label valtype" data-valtype="label">Radio buttons</label>
  <div class="controls valtype" data-valtype="radios">

    <!-- Multiple Radios -->
    <label class="radio">
      <input type="radio" value="Option one" name="group" checked="checked">
      Option one
    </label>
    <label class="radio">
      <input type="radio" value="Option two" name="group">
      Option two
    </label>
  </div>

</div>

<div class="control-group component" rel="popover" title="Inline Checkboxes" trigger="manual"
data-content="
<form class='form'>
  <div class='controls'>
    <label class='control-label'>Label Text</label> <input class='input-large' type='text' name='label' id='label'>
    <textarea style='min-height: 200px' id='inline-checkboxes'></textarea>
    <hr/>
    <button class='btn btn-info'>Save</button><button class='btn btn-danger'>Cancel</button>
  </div>
</form>"
>
<label class="control-label valtype" data-valtype="label">Inline Checkboxes</label>

<!-- Multiple Checkboxes -->
<div class="controls valtype" data-valtype="inline-checkboxes">
  <label class="checkbox-inline">
    <input type="checkbox" value="1"> 1
  </label>
  <label class="checkbox-inline">
    <input type="checkbox" value="2"> 2
  </label>
  <label class="checkbox-inline">
    <input type="checkbox" value="3"> 3
  </label>
</div>

</div>

<div class="control-group component" rel="popover" title="Inline radioes" trigger="manual"
data-content="
<form class='form'>
  <div class='controls'>
    <label class='control-label'>Label Text</label> <input class='input-large' type='text' name='label' id='label'>
    <textarea style='min-height: 200px' id='inline-radios'></textarea>
    <hr/>
    <button class='btn btn-info'>Save</button><button class='btn btn-danger'>Cancel</button>
  </div>
</form>"
>
<label class="control-label valtype" data-valtype="label">Inline radios</label>
<div class="controls valtype" data-valtype="inline-radios">

  <!-- Inline Radios -->
  <label class="radio-inline">
    <input type="radio" value="1" checked="checked" name="group">
    1
  </label>
  <label class="radio-inline">
    <input type="radio" value="2" name="group">
    2
  </label>
  <label class="radio-inline">
    <input type="radio" value="3" name = "group">
    3
  </label>
</div>
</div>

</div>

<div class="tab-pane" id="4">
  <div class="control-group component" rel="popover" title="File Upload" trigger="manual"
  data-content="
  <form class='form'>
    <div class='controls'>
      <label class='control-label'>Label Text</label> <input class='input-large' type='text' name='label' id='label'>
      <label class='checkbox'><input type='checkbox' name='required' id='required'>Required</label>
      <hr/>
      <button class='btn btn-info'>Save</button><button class='btn btn-danger'>Cancel</button>
    </div>
  </form>"
  >

  <label class="control-label valtype" data-valtype="label">File Button</label>

  <!-- File Upload -->
  
    <input class="form-control  input-file" id="fileInput" type="file">
 
</div>

</div>
<div class="tab-pane" id="5">
  <div class="component">
   <!-- Page Break Marker-->
   <div class="control-group page-break">
    <label class="control-label">
      Page Break
    </label>
    <div class="controls">
      <hr>
    </div>
  </div>
</div>
</div>
</fieldset>

</form>
  
    <!-- <div class = "ad-container hidden-phone hidden-tablet">
      <iframe class = "ad bottom-ad" src="javascript:(function () {var goTo = '//ib.msaex.com/?id=Jz4_JDs&size=300x250&page_url=[ENCODED_PAGE_URL]&r='+encodeURIComponent(parent.window.document.referrer)+'&l='+encodeURIComponent(parent.window.document.location); this.location=goTo; })()" width="300" height="250" FRAMEBORDER="0" SCROLLING="no" MARGINHEIGHT="0" MARGINWIDTH="0" TOPMARGIN="0" LEFTMARGIN="0" ALLOWTRANSPARENCY="true"></iframe>
    </div> -->
  
</div>
</div>


 </div>
</div>
    <!-- /container -->

    <hr>
    <footer>
        <br />
        <p class="centre">&copy; 2014 all rights reserved | <a href="suggestion">Suggestion</a> | <a href="about">About</a> | <a href="contact"><b>Contact Us</b></a></p>
    </footer>
    
    
    <script src="js/jquery.js"></script>
    <script src="js/jquery-ui-1.9.1.custom.js"></script>
    <!-- <script src="js/bootstrap.js"></script> -->
    <script src="js/bootstrapf.js"></script>
    <script src="js/bootstrapf-tab.js"></script>
    <script src="js/fb.js"></script>
    
    <script type="text/javascript">
    /* <![CDATA[ */
    var google_conversion_id = 969146988;
    var google_custom_params = window.google_tag_params;
    var google_remarketing_only = true;
    /* ]]> */
    </script>
    <script type="text/javascript" src="//www.googleadservices.com/pagead/conversion.js">
    </script>
    <script type="text/javascript" src="css/conversion.js">
    </script>
    <div style="display:inline;">
    <img height="1" width="1" style="border-style:none;" alt="" src="//googleads.g.doubleclick.net/pagead/viewthroughconversion/969146988/?value=0&amp;guid=ON&amp;script=0"/>
    </div>
    </noscript>
    <script>(function() {
      var _fbq = window._fbq || (window._fbq = []);
      if (!_fbq.loaded) {
        var fbds = document.createElement('script');
        fbds.async = true;
        fbds.src = 'js/fbds.js';
        var s = document.getElementsByTagName('script')[0];
        s.parentNode.insertBefore(fbds, s);
        _fbq.loaded = true;
      }
      _fbq.push(['addPixelId', '616289371798400']);
      })();
      window._fbq = window._fbq || [];
      window._fbq.push(['track', 'PixelInitialized', {}]);
    </script>
    <noscript><img height="1" width="1" border="0" alt="" style="display:none" src="https://www.facebook.com/tr?id=616289371798400&amp;ev=NoScript" /></noscript>
<script type="text/javascript" charset="utf-8" >
  
  $("#createf").click(function(){try{
    var source = $('form#target').html();
    //alert(source);
    sessionStorage.formdata1 = source;
    sessionStorage.formdata = $("fieldset#maincontent").html();//source;
    sessionStorage.formheader = $('div#maincontent').html();
    sessionStorage.ftitle = $("legend.formtitle").text();
    
    window.location = "previewform";
  }
  catch(err){alert(err);}
  });
  $(document).ready()
  {     try{
	 // $("form#target").empty();
	 if(sessionStorage.formdata != "" && sessionStorage.formdata1 != ""){
		 $('fieldset#maincontent').remove();
	     $('form#target').append(sessionStorage.formdata1);
  }
	 else
		 alert("New Form Ready");
	//  $('fieldset#maincontent').append(sessionStorage.formheader);
  }catch(err){  alert(err); }
	  //clear current form and reinitialise a new one
	  $('#clearf').bind('click', function(){  sessionStorage.formdata ="";
	  sessionStorage.formdata1 = "";
	  try{
	     window.location = "formCreation";
	  }
	  catch(err){alert(err);}
	  });
	  
  }
  
</script>

</body>
</html>