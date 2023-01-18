ymaps.ready(function () {
    // Построение маршрута на общественном транспорте.
    
    let myMap = new ymaps.Map('map', {
        center: [55.751574, 37.573856],
        zoom: 9,
        controls: []
    });
    
    // Создание экземпляра маршрута.
    let multiRoute = new ymaps.multiRouter.MultiRoute({
        referencePoints: [
            'метро Смоленская',
            'метро Арбатская'
        ],
        params: {
            // Тип маршрута: на общественном транспорте.
            routingMode: "masstransit"  
        }
    }, {
        // Автоматически устанавливать границы карты так,
        // чтобы маршрут был виден целиком.
        boundsAutoApply: true
    });

    // Добавление маршрута на карту.
    myMap.geoObjects.add(multiRoute);
    multiRoute.model.events.add('requestsuccess', function() {
    // Получение ссылки на активный маршрут.
    let activeRoute = multiRoute.getActiveRoute();
    // Вывод информации о маршруте.
      console.log("Длина: " + activeRoute.properties.get("distance").text);
      console.log("Время прохождения: " + activeRoute.properties.get("duration").text);
    // Для автомобильных маршрутов можно вывести 
    // информацию о перекрытых участках.
      if (activeRoute.properties.get("blocked")) {
        console.log("На маршруте имеются участки с перекрытыми дорогами.");
    }
  });
});   
