ymaps.ready( function (){
  let mymap=new ymaps.Map('map',{
    center:[55.75366489822893,37.626052494342886],
    zoom:17,
    controls:['routePanelControl']
  });
  let control= mymap.controls.get('routePanelControl');
  let location = ymaps.geolocation.get();
  location.then(function (res) {
    let userTextLocation = res.geoObjects.get(0).properties.get('text');
    control.routePanel.state.set({
        from: userTextLocation,
        to: 'Москва, ул. Льва Толстого, 16'
    });
});
