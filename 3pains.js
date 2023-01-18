ymaps.ready(function () {
    // Построение маршрута на общественном транспорте.
    
    var myMap = new ymaps.Map('map', {
        center: [55.751574, 37.573856],
        zoom: 9,
        controls: []
    });
    
    // Создание экземпляра маршрута.
    let multiRoute = new ymaps.multiRouter.MultiRoute({
        referencePoints: [
            'метро Смоленская',
            'метро Арбатская',
            'метро Кожуховская'
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
});   
</script>
