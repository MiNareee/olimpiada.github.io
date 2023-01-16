ymaps.ready( function (){
  let mymap=new ymaps.Map('map',{
    center:[55.75366489822893,37.626052494342886],
    zoom:17,
    controls:['routePanelControl']
  });
  let control= mymap.controls.get('routePanelControl');
  let city='Москва';
  var options = {
  enableHighAccuracy: true,
  timeout: 5000,
  maximumAge: 0
};

function success(pos) {
  const crd = pos.coords;
  console.log(`Широта: ${crd.latitude}`);
  console.log(`Долгота: ${crd.longitude}`);
  
  
  let reverseGeocoder= ymaps.geocoder([crd.latitude,crd.longitude]);
  let locationText= null;
  reverseGeocoder.then(function(res) {
  locationText=res.geoObjects.get(0).properties.get('text')
  console.log(locationText)
    
  control.routePanel.state.set({
    type: 'masstransit',
    fromEnabled: false,
    from: locationText,
    toEnabled: true,
    to: `${city}, 6-я Кожуховская 6`,
    });
  });
  console.log(locationText)
}

function error(err) {
  console.warn(`ERROR(${err.code}): ${err.message}`);
}

navigator.geolocation.getCurrentPosition(success, error, options);
});
