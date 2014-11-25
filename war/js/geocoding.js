//geocoding source
/*
	Author: Larry Akah 
	Date: 03/08/2014
	email: larryakah@gmail.com
*/

	var egeocoder = new google.maps.Geocoder(); //geocoder for employee locations
	var bgeocoder = new google.maps.Geocoder(); //geocoder for business locations
	var	 latlng ;
	// alert(eName);	

	var emapOtions = {
			center: new google.maps.LatLng(-34.397,150.44),
			minZoom: 8,
			zoom:15,
			noClear:false
		};

//main map object to be displayed on the given DIV element
 emap = new google.maps.Map(document.getElementById("mapArea"), emapOtions); //employee map object
 cmap = new google.maps.Map(document.getElementById("map"), emapOtions); //business map object

	function locateEmployee() {
		//alert("Starting ..");
		addr = $("#eaddress").val();
	//	alert(addr);
		//var address = document.getElementById('address').value;
		  egeocoder.geocode( { 'address': addr}, function(results, status) {
		    if (status == google.maps.GeocoderStatus.OK) {
		      cmap.setCenter(results[0].geometry.location);
		      var marker = new google.maps.Marker({
		          map: cmap,
		          position: results[0].geometry.location ,
		          title: addr+" => Employee",
		          animation: google.maps.Animation.DROP
		      });
		      var infowin  = new google.maps.InfoWindow();
		      	  infowin.setPosition(results[0].geometry.location);
		      	  infowin.setContent("Zoom closer to <br/>completely isolate <br/>Employee. " +
		      	  		"<a href='https://maps.google.com/maps?daddr="+addr+"'>Trace Route to Employee</a>");
		      	  infowin.open(cmap);
		      latlng = results[0].geometry.location ;
		    } 
		    else {
		      alert('Location Failed. Reason: ' + status);
		    }
		  });
		}
	function locateBusiness() {
		//alert("Starting ..");
		addr = $("#baddress").val();
	//	alert(addr);
		  egeocoder.geocode( { 'address': addr}, function(results, status) {
		    if (status == google.maps.GeocoderStatus.OK) {
		      cmap.setCenter(results[0].geometry.location);
		      var marker = new google.maps.Marker({
		          map: cmap,
		          position: results[0].geometry.location ,
		          title: addr+" => Business",
		          animation: google.maps.Animation.DROP
		      });
		      var infowin  = new google.maps.InfoWindow();
	      	  infowin.setPosition(results[0].geometry.location);
	      	  infowin.setContent("Zoom closer to <br/>completely isolate <br/>the Business. " +
	      	  		"<a href='https://maps.google.com/maps?daddr="+addr+"'>Trace Route to Business</a>");
	      	  infowin.open(cmap);
		      latlng = results[0].geometry.location ;
		    } 
		    else {
		      alert('Failed to fetch location from google \n: Reason: ' + status);
		    }
		  });
		}
	/*try{
		codeAddress();
		alert("Code: "+latlng.lat()+latlng.lng());
	}
	catch(e)
	{
		alert("Errors: "+e);
	}*/
	