ymaps.ready(init);
function init(){
  let mymap=new ymaps.Map('map',{
    center:[55.75366489822893,37.626052494342886],
    zoom:17,
    controls:['routePanelControl']
  });
  let control= mymap.controls.get('routePanelControl');
  let city='Москва';
  let location =ymaps.geolocation.get();
      location.then(function(res){
      letlocationText = res.geolocation.get(0).properties.get('text');
      console.log(locationText)
      });
                       
  control.routePanel.state.set({
    type: 'masstransit',
    fromEnabled: false,
    from: `${city}, Петра Романова 4,
    toEnabled: true,
    to: `${city}, 5-я Кожуховская 6,
  });
 })
