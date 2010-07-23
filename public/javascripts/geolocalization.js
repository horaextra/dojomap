 jQuery(window).ready(function(){
      jQuery("#btnInit").click(initiate_geolocation);
  });

  function initiate_geolocation() {
      navigator.geolocation.getCurrentPosition(handle_geolocation_query);
  }

  function handle_geolocation_query(position){
      alert('Lat: ' + position.coords.latitude + ' ' +
            'Lon: ' + position.coords.latitude);
  }