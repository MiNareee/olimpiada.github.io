  ymaps.ready(function(){
  let mymap=new ymaps.Map('map',{
    center:[55.75366489822893,37.626052494342886],
    zoom:17,
    controls:['routePanelControl']
  });
  let control= mymap.controls.get('routePanelControl');
  let city='Москва';
  let location=ymaps.geolocation.get();

   location.then (function(res){
      let locationText=res.geoObjects.get(0).properties.get('text');
      console.log(locationText)
    control.routePanel.state.set({
    type: 'masstransit',
    fromEnabled: true,
    from: locationText,
    toEnabled: false,
    to: `${city}, 6-я Кожуховская 6`,
    });
  });
});
