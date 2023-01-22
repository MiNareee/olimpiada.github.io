var moskowUtc = 3;
var timerId = setInterval(function() {
  let t = new Date(),
    tt = t.getUTCHours() + moskowUtc;
  document.getElementById('tik-tak').innerHTML = (tt > 24 ? "0" : "") + (tt > 24 ? tt - 24 : tt) + ":" + (t.getMinutes() < 10 ? '0' : '') + t.getMinutes() + ":" + (t.getSeconds() < 10 ? '0' : '') + t.getSeconds();
  document.getElementById('tik-tak').classList.add("step");
}, 1000);
