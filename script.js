ymaps.ready(init);
function init(){
  let map=new ymaps.Map('map',{
    center:[55.75366489822893,37.626052494342886],
    zoom:17
  });
  let placemark= new ymaps.Placemark([55.75366489822893,37.626052494342886],{
  ballonContentHeader : 'Хедер боди',
  ballonContentBody: 'Боди балуна',
  ballonContentFooter: 'Подвал',
  },{
    
  });
  let placemark2= new ymaps.Placemark([55.760610429335166,37.619841278114016],{
  ballonContent: `
    <div class='ballon_address'> г.Москва</div>
    <div class='ballon_contacts'> г.Москва</div>
    <a href ='tel:+79999999999'> +79999999999</a>
  
  
  `
  },{
     
    
  });
  let placemark3= new ymaps.Placemark([55.75564064908507,37.63257850958312],{},{
    
  });
  map.geoObjects.add(placemark);
  map.geoObjects.add(placemark2);
  map.geoObjects.add(placemark3);
 }

