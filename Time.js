setInterval(function() {
  let mskTime = new Date().toLocaleTimeString('ru-RU', { timeZone: 'Europe/Moscow' });
  document.getElementById('currentTime').innerHTML = currentTime;
}, 1000);
