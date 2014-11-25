<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.google.appengine.api.users.*" %>
<%@ page import="java.util.List" %>
 <%@ page import="technologyBusiness.Employee" %>
  <%@ page import="technologyBusiness.Business" %>
 
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

    <title>Localisation on Maps</title>

    <!-- Bootstrap core CSS -->
    <link href="css/bootstrap.min.css" rel="stylesheet">

    <!-- Custom styles for this template -->
    <link href="css/jumbotron.css" rel="stylesheet">
    <script type="text/javascript">
    	if(sessionStorage.imeiNumber == 1){
    
    	}
    	else
    		{
    			window.location = "../";	

    		}
    	
		alert("Hello "+<%= userService.getCurrentUser().getNickname() %>);
    	
    	
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
	<style>
		 #mapArea{height:500px;
				} 
	</style>
	<script src ="https://maps.googleapis.com/maps/api/js?key=AIzaSyBEpOVnvY9ZN8HwrOpGzs6hqLIp_Hi6u2E">
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
                  <a class="blog-nav-item active" href="dashboard">  
                  <span class="glyphicon glyphicon-dashboard"> </span> Dashboard  </a>|
                  <a class="blog-nav-item " href="login" onclick="logout()"> 
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
              <div class="row">
                <div class="btn-group btn-group-justified">
                  <div class="btn-group">
                    <a href="newBusinessPersoInfo" class="btn btn-success btn-lg"> <span class="glyphicon glyphicon-briefcase"> </span> Create new business</a>
                  </div>
                  <div class="btn-group">
                  <a href="newEmployeePersoInfo" class="btn btn-success btn-lg"> <span class="glyphicon glyphicon-user"> </span> Create new employee</a>
                  </div>
                  <div class="btn-group">
                    <a href="formCreation" class="btn btn-success btn-lg"> <span class="glyphicon glyphicon-file"> </span> Create new repport form</a>
                  </div>
                </div>
              </div>
              <br />
          <!-- the left vertical menu -->
              <div class="col-md-3" id="bgcolor">
                  <ul class="nav nav-sidebar">
                  	<li class="active"><a href="maps"><span class="pull-right"><span class="glyphicon glyphicon-chevron-right"></span></span>maps businesses/employees</a></li>
                    <li><a href="dashboard">Reports</a></li>
                    <li><a href="employees">Employees</a></li>
                    <li><a href="businesses">Businesses</a></li>
                    <li><a href="forms">Forms</a></li>
                    
                  </ul>
              </div>
          <!-- the right panel of the dashboard -->
           
              <div class="col-md-9"  >
             	<div class="row">
             		
             		<div class="col-md-5">
              <!-- start of modal panel Large modal -->
             
				<a href="#" class="btn btn-info btn-lg btn-block" data-toggle="modal" id="mapeb"
				rel="popover" data-content="Find out the distribution of your Employees and Businesses across the globe with maps" 
				data-original-title="View Employees and Businesses on Maps" >Map Employees and Businesses</a>
				<select  class="form-control" id="baddress" onchange="locateBusiness()">
				<option value="">Select Business</option>
				<% List<Business> biz = (List<Business>)request.getAttribute("business");
              		for(Business mybiz : biz){
                %>
     				<option value="<%=mybiz.getBizCity()%>" ><%= mybiz.getBizName()%></option>
     			<% }%>	 
     			</select>
     			<select class="form-control" id="eaddress" onchange="locateEmployee()"><option value="">Select Employee</option>
     			<% List<Employee> emp = (List<Employee>)request.getAttribute("employees");
		 			String addr ="";
					for(Employee e : emp) {//load all employee adresses into a single string
					addr += e.getEmployeeCity().toString()+",";	
				%>
				<option value="<%=e.getEmployeeCity()%>"><%= e.getEmployeeName()%></option>
				<%} %>
     			</select>
				<!-- end of the modal pannel -->
				<br /><br />
				 <!-- start of modal panel Large modal -->
				<a href="#" class="btn btn-info btn-lg btn-block" data-toggle="modal" data-target=".bs-example2-modal-lg "
				rel="popover" data-content="Find Other business places that might catch Your interest. Also see which competitors are around you. " 
				data-original-title="Maps for other businesses" id="example2">Business Places</a>
				<div class="modal fade bs-example2-modal-lg 1" tabindex="-1"
					role="dialog" aria-labelledby="myLargeModalLabel"
					aria-hidden="true">
					<div class="modal-dialog modal-lg ">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<h4 class="modal-title" id="myModalLabel">Businees Places, Similar Businesses on Maps. <span><br />Double Click Points on the map to get closer</span></h4>
							
							</div>
							<div class="modal-body" id="mapAreaBusinessPlaces">
							
							</div>
						</div>
					</div>
				</div>
				<!-- end of the modal pannel -->
				<br /><br />
				 <!-- start of modal panel Large modal -->
				<a href="#" class="btn btn-info btn-lg btn-block" data-toggle="modal" data-target=".bs-example3-modal-lg "
				rel="popover" data-content="Watch the streets, it might give you some ideas" 
				data-original-title="Streets and business atmosphere" id="example3">Business Streets</a>
				<div class="modal fade bs-example3-modal-lg" tabindex="-1"
					role="dialog" aria-labelledby="myLargeModalLabel"
					aria-hidden="true">
					<div class="modal-dialog modal-lg ">
						<div class="modal-content">
							<div class="modal-header">
								<button type="button" class="close" data-dismiss="modal"
									aria-hidden="true">&times;</button>
								<h4 class="modal-title" id="myModalLabel">The Business Atmosphere in the streets</h4>
							</div>
							<div class="modal-body" id="mapAreaBusinessAtmosphere">
							
							</div>
						</div>
					</div>
				</div>
				<!-- end of the modal pannel -->
				<!-- <div id="panel">
     							 <input type="textbox" value="Buea, Cameroon">
     							 <input type="button" value="Locate Now" >
     							 <select id="address" onchange="codeCustomAddress()">
     							 	<option value="Buea">Buea</option>
     							 	<option value="Douala">Douala</option>
     							 </select>
   				 </div> -->
				<br /><br />
				
					</div>
					<div id="map" class="col-md-7" style="background-color:#eee; height:400px;"> 
										
					</div>
				</div>
			<div id="mapArea" style="display:none" ></div>
				<!-- </script> -->
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
        <p class="centre">&copy; 2014 all rights reserved | <a href="suggestion">Suggestion</a> | <a href="about">About</a> | <a href="contact">Contact Us</a></p>
    </footer>

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/1.11.0/jquery.min.js"></script>
    <script src="js/jquery-1.11.1.min.js" ></script>
    <script src="js/bootstrap.min.js"></script>
    <script src="js/bootstrap-tooltip.js"></script>
    <script src="js/bootstrap-popover.js"></script>
    <script src="js/geocoding.js"></script> <!--  geocoder script -->
    
    <!-- script for the popover-->
          <script>  
			$(function ()  
			{ $("#mapeb").popover();
			  $("#example2").popover();
			  $("#example3").popover();
			  $("#example4").popover();
			});  
		  </script>
  	
  		
		 
  		<script>
		//my businesses
	//	var map = $("div#mapArea");
		var myplace, url, img, eName;
		<% if(addr.length() > 0){addr = (String) addr.subSequence(0, addr.length()-1);} %>
		 myplace = '<%= addr  %>' ;
		 eName = myplace;
		// url="http://maps.googleapis.com/maps/api/streeview?size=600x600&location="+myplace+"+Douala&key=AIzaSyBEpOVnvY9ZN8HwrOpGzs6hqLIp_Hi6u2E";
		 testurl="https://www.google.com/maps/embed/v1/place?key=AIzaSyBEpOVnvY9ZN8HwrOpGzs6hqLIp_Hi6u2E&q="+myplace;
			 //"http://maps.googleapis.com/maps/api/streetview?size=400x400&location=46.414382,10.013988&fov=90&heading=235&pitch=10"
		function setPlacesMap(){
		try{ 
			 frame = document.createElement("iframe");
			 frame.src= testurl;
		 	$(frame).css({"height":"500px","width":"100%","frameborder":"0px","border":"0px"});
		 	$("#mapAreaBusinessPlaces").empty();
		 	$("#mapAreaBusinessPlaces").append(frame); 
			//alert(url)
		}
		catch(err)
		{
				alert(err);
		}
	 }//end function setPlacesMaps
	    
	   function setStreetMaps()
			 {
		   url="http://maps.googleapis.com/maps/api/streeview?size=600x490&location=40.720032,-73.988354&fov=90&heading=235&pitch=10&key=AIzaSyBEpOVnvY9ZN8HwrOpGzs6hqLIp_Hi6u2E";
		  		 frame = document.createElement("iframe");
				 frame.src= url;
		 		$(frame).css({"height":"500px","width":"100%","frameborder":"0px","border":"0px"});
		 		$("#mapAreaBusinessAtmosphere").empty();
		 		$("#mapAreaBusinessAtmosphere").append(frame); 
			 }
		 //Map Trigger Zone
		$("#test").click(function(){alert("OK")});
			 
		$("#example2").click(function(){  // shows a places map of businesses to find similar business areas
			setPlacesMap();
			});
		$("#example3").click(function(){   //shows a street view of my business areas
			setStreetMaps();
			});
  		</script>

  </body>
</html>

