function initialize() {
    var latlng = new google.maps.LatLng(38.649145,-90.336298);
    var myOptions = {
      zoom: 13,
      center: latlng,
      mapTypeId: google.maps.MapTypeId.ROADMAP
    };
    var map = new google.maps.Map(document.getElementById("map_canvas"), myOptions);
	
	var marker = new google.maps.Marker({
		position: latlng,
		map: map,
		title:"POWERS&reg Insurance and Benefits"
	});
}
