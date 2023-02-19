function TimeOclc(TimeAll, Time) {
  let t = String(Time[1])
  let times = Number(t.slice(0, 2)) * 60 + Number(t.slice(3, 5))
  for (let i = 0;i< TimeAll.length; i++){
    if (TimeAll[i][0] == Time[0]) {
      var indices = i
    }
  }
  let s = String(indices)
  let win1 = TimeAll[indices][0]
  let win2 = TimeAll[indices][1]
  if (win1 == 'выходной') {
    return false
  } else {
    let time1 = Number(win2.slice(0, 2)) * 60 + Number(win2.slice(3, 5))
    let time2 = Number(win2.slice(6, 8)) * 60 + Number(win2.slice(9, 11))
    if ((time1 <= times) && (times <= time2)) {
      return time2 - times
    } else {
      return false
    } 
  }   
}
let TimeAll=[['Пн', '12:00-18:00'],['Вт','12:00-18:00'],['Ср', '10:00-19:00'],['Чт', '12:00-18:00'],['Пт', '14:00-21:00'],['Сб', 'выходной'],['Вс','выходной']]
let Time=['Пн', '14:20']
console.log(TimeOclc(TimeAll, Time))
