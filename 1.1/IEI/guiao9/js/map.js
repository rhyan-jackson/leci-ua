var map = new L.Map("myMap", { center: [40.633258, -8.659097], zoom: 15 });
var osmUrl = "http://{s}.tile.openstreetmap.org/{z}/{x}/{y}.png";
var osmAttrib = "Map data OpenStreetMap contributors";
var osm = new L.TileLayer(osmUrl, { attribution: osmAttrib });
map.addLayer(osm);
map.on("click", showCoordinates);

function showCoordinates(e) {
    var s = document.getElementById("coordinates");
    s.innerHTML = "Latitude, Longitude = " + e.latlng.lat + ", " + e.latlng.lng;
}

var pontos = [
    L.marker([40.633258, -8.659097]),
    L.marker([40.642729, -8.747899]),
    L.marker([40.804216724166814, -8.616675349717399])
];
for (let i in pontos) {
    pontos[i].addTo(map);
}

L.marker([40.633258, -8.659097]).bindPopup("LABI@DETI").addTo(map);
L.marker([40.804216724166814, -8.616675349717399]).bindPopup("Casa").addTo(map);

var grupo = new L.featureGroup(pontos);
map.fitBounds(grupo.getBounds());