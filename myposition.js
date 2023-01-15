ymaps.ready( function (){
  let mymap=new ymaps.Map('map',{
    center:[55.75366489822893,37.626052494342886],
    zoom:17,
    controls:['routePanelControl']
  });
  let control= mymap.controls.get('routePanelControl');
  let city='Москва';
                       
  control.routePanel.state.set({
    type: 'masstransit',
    fromEnabled: false,
    from: `${city}, Петра Романова 4`,
    toEnabled: true,
    to: `${city}, 6-я Кожуховская 6`,
  });
 });
var options = {
  enableHighAccuracy: true,
  timeout: 5000,
  maximumAge: 0
};

function success(pos) {
  var crd = pos.coords;
  console.log(`Широта: ${crd.latitude}`);
  console.log(`Долгота: ${crd.longitude}`);
}

function error(err) {
  console.warn(`ERROR(${err.code}): ${err.message}`);
}

navigator.geolocation.getCurrentPosition(success, error, options);
