ymaps.ready(init);
function init(){
  let map=new ymaps.Map('map',{
    center:[55.75366489822893,37.626052494342886],
    zoom:17
  });
  let placemark= new ymaps.Placemark([55.75366489822893,37.626052494342886],{},{
    
  });
  map.geoObjects.add(placemark);
 }

