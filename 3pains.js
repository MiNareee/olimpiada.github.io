  ymaps.ready(function(){
  let mymap=new ymaps.Map('map',{
    center:[55.75366489822893,37.626052494342886],
    zoom:17,
  });
  let multiRoute = new ymaps.multiRouter.MultiRoute({   
        // Точки маршрута.
        // Обязательное поле. 
        referencePoints: [
            'Москва, метро Смоленская',
            'Москва, метро Арбатская',
            [55.734876, 37.59308], // улица Льва Толстого.
        ]
    }, {
      // Автоматически устанавливать границы карты так,
      // чтобы маршрут был виден целиком.
      boundsAutoApply: true
});

    // Добавление маршрута на карту.
    myMap.geoObjects.add(multiRoute);
});
