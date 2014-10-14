
$(document).ready( function(){

var initmap = function(){

    var map = L.map('map').setView([39.9522, -75.1639], 16);

    L.tileLayer('http://{s}.tile.osm.org/{z}/{x}/{y}.png', {
        attribution: '&copy; <a href="http://osm.org/copyright">OpenStreetMap</a> contributors'
    }).addTo(map);

    // add a marker in the given location, attach some popup content to it and open the popup
    // L.marker([39.9522, -75.1639]).addTo(map)
    //     .bindPopup('A pretty CSS3 popup. <br> Easily customizable.')
    //     .openPopup();
    // }

    initmap();
    $(".marker_link").click(function(){
        var lat = $(this).parent().parent().find(".lat").text();
        var lon = $(this).parent().parent().find(".lon").text();

    });
} );
