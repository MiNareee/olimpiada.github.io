ymaps.ready( function (){
  let mymap=new ymaps.Map('map',{
    center:[55.75366489822893,37.626052494342886],
    zoom:17,
    controls:['routePanelControl']
  });
  let control= mymap.controls.get('routePanelControl');
  let city='Москва';
  const options = {
  enableHighAccuracy: true,
  timeout: 5000,
  maximumAge: 0
};

function success(pos) {
  const crd = pos.coords;
  console.log(`Latitude : ${crd.latitude}`);
  console.log(`Longitude: ${crd.longitude}`);
  
  let reverseGeocoder= ymaps.geocode([crd.latitude,crd.longitude]);
  let locationText= null;
  reverseGeocoder.then(function(res) {
  locationText=res.geoObjects.get(0).properties.get('text')
    
  control.routePanel.state.set({
    type: 'masstransit',
    fromEnabled: false,
    from: locationText,
    toEnabled: true,
    to: `${city}, 6-я Кожуховская 6`,
    });
  });
}

function error(err) {
  console.warn(`ERROR(${err.code}): ${err.message}`);
}

navigator.geolocation.getCurrentPosition(success, error, options);
});

