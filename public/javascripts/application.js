function initialize_map(position) {
	var latlng; 
	if(position){
			latlng = new google.maps.LatLng(position.coords.latitude,position.coords.longitude);
	} else{
		latlng = new google.maps.LatLng(-22.915413,-43.170261);
	}
  var myOptions = {
    zoom: 9,
    center: latlng,
    mapTypeId: google.maps.MapTypeId.ROADMAP
  };
  var map = new google.maps.Map(document.getElementById("map_canvas"),
      myOptions);
  
  var image = '/images/dojo.png';
  $.getJSON('/dojos', function(dojos) {
    $(dojos).each(function(index, d) {
			var dojo = d.dojo;
      var marker = new google.maps.Marker({
        position: new google.maps.LatLng(dojo.latitude,dojo.longitude), 
        map: map, 
        icon: image
      });
      $.get("/dojos/" + dojo.id, function(contentSting) {

        var infowindow = new google.maps.InfoWindow({
            content: contentSting
        });

        google.maps.event.addListener(marker, 'click', function() {
          infowindow.open(map,marker);
        });
        
      });
    });
  });
}

$(document).ready(function(){
	initialize();
});

function initialize() {
	if(navigator.geolocation) 
			navigator.geolocation.getCurrentPosition(initialize_map, handle_errors);
	else
		initialize_map();
}
function handle_errors(error)
{
	switch(error.code) {
		default: 
		initialize_map();
		break;
		
	}
}