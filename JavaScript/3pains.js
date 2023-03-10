ymaps.ready(function () {
    // Построение маршрута на общественном транспорте.
    var a=[[55.82860931692913,37.633890541622904],
            [55.829850009160864,37.631803808229506],
            [55.832174834112024,37.62803798677258],
            [55.834389165122815,37.63000885528062],
            [55.832930836923055,37.61880835822185]]
    let mymap = new ymaps.Map('map', {
        center: [55.751574, 37.573856],
        zoom: 9,
        controls: ['largeMapDefaultSet']
    });
    
    // Создание экземпляра маршрута.
    let multiRoute = new ymaps.multiRouter.MultiRoute({
        referencePoints: a,
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
    mymap.geoObjects.add(multiRoute);
});   
