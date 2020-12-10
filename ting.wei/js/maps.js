


const makeMap = async(target, center={lat:37.786231,lng:-122.399310}) => {
   await checkData(()=>window.google);

   let map_el = $(target);

   if(!map_el.data("map"))
      map_el.data({
         "map": new google.maps.Map(map_el[0], {
            center: center,
            zoom: 12,
            styles: [
            { elementType: "geometry", stylers: [{ color: "#242f3e" }] },
            {
              elementType: "labels.text.stroke",
              stylers: [{ color: "#242f3e" }],
            },
            {
              elementType: "labels.text.fill",
              stylers: [{ color: "#746855" }],
            },
            {
              featureType: "administrative.locality",
              elementType: "labels.text.fill",
              stylers: [{ color: "#d59563" }],
            },
            {
              featureType: "poi",
              elementType: "labels.text.fill",
              stylers: [{ color: "#d59563" }],
            },
            {
              featureType: "poi.park",
              elementType: "geometry",
              stylers: [{ color: "#263c3f" }],
            },
            {
              featureType: "poi.park",
              elementType: "labels.text.fill",
              stylers: [{ color: "#6b9a76" }],
            },
            {
              featureType: "road",
              elementType: "geometry",
              stylers: [{ color: "#38414e" }],
            },
            {
              featureType: "road",
              elementType: "geometry.stroke",
              stylers: [{ color: "#212a37" }],
            },
            {
              featureType: "road",
              elementType: "labels.text.fill",
              stylers: [{ color: "#9ca5b3" }],
            },
            {
              featureType: "road.highway",
              elementType: "geometry",
              stylers: [{ color: "#746855" }],
            },
            {
              featureType: "road.highway",
              elementType: "geometry.stroke",
              stylers: [{ color: "#1f2835" }],
            },
            {
              featureType: "road.highway",
              elementType: "labels.text.fill",
              stylers: [{ color: "#f3d19c" }],
            },
            {
              featureType: "transit",
              elementType: "geometry",
              stylers: [{ color: "#2f3948" }],
            },
            {
              featureType: "transit.station",
              elementType: "labels.text.fill",
              stylers: [{ color: "#d59563" }],
            },
            {
              featureType: "water",
              elementType: "geometry",
              stylers: [{ color: "#17263c" }],
            },
            {
              featureType: "water",
              elementType: "labels.text.fill",
              stylers: [{ color: "#515c6d" }],
            },
            {
              featureType: "water",
              elementType: "labels.text.stroke",
              stylers: [{ color: "#17263c" }],
            },
          ],
            disableDefaultUI: true
         }),
         "infoWindow": new google.maps.InfoWindow({content:''})
      });

   return map_el;
}



const makeMarkers = (map_el,map_locs) => {
   let map = map_el.data("map");
   let markers = map_el.data("markers");

   if(markers) markers.forEach(o=>o.setMap(null));

   markers = [];

   map_locs.forEach(o=>{
      let pos = {
         position:o,
         map:map
      }
      if(o.icon) pos.icon = {
            url: o.icon,
            scaledSize: {
               width:40,
               height:40  
            }
         };
      let m = new google.maps.Marker(pos);
      markers.push(m);
   });

   map_el.data("markers",markers);
   setTimeout(()=>setMapBounds(map_el,map_locs),150);
}



const setMapBounds = (map_el,map_locs) => {
   let map = map_el.data("map");

   if(map_locs.length==1) {
      map.setCenter(map_locs[0]);
      map.setZoom(14);
   } else if(map_locs.length==0) {
   		if(window.location.protocol!=="https:") return;
   		else {
   			navigator.geolocation.getCurrentPosition(p=>{
   				let pos = {
   					lat:p.coords.latitude,
   					lng:p.coords.longitude
   				};
   				map.setCenter(pos);
   				map.setZoom(zoom);
   			},(...args)=>{
   				console.log("error?",args)
   			},{
   				enableHighAccuracy:false,
   				timeout:5000,
   				maximumAge:0
   			});
   		}
   } else {
      let bounds = new google.maps.LatLngBounds(null);
      map_locs.forEach(o=>{
         bounds.extend(o);
      });
      map.fitBounds(bounds);
   }
}

