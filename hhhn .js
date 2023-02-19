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








let s = 5
let A = 1
let B = 1
let ji = 0.64 
var d = []
let Ages = 100
let q = 8
let ant=10
let mnTrass = 1000000000000
var bestT = []
var mas = new Array(s);
for (var i = 0; i < mas.length; i++) {
  mas[i] = new Array();
  for (j=0; j<s; j++){
    mas[i][j]=0.2;
  }
 }
for (let fg=0; fg<Ages;fg++){
  var td = new Array(ant)
  for (var i = 0; i < mas.length; i++) {
    td[i]=new. Array();
    for (j=0; j<s; j++){
      td[i][j]=0;
    }
  }
  for (let o=0; o<ant;o++){
    var kf=[]
    var antROUTE=[]
    let from_city=0
    antROUTE.push(from_city)
    var Zero = new Array(s)
    for (var i = 0; i < Zero.length; i++) {
      Zero[i]=new. Array();
      for (j=0; j<s; j++){
        Zero[i][j]=0;
      }
    }
    for (let k=0; k<s;k++){
      let Sum = 0 
      for (let lfg=0; lfg<a[from_city].length;lfg++){
        if (lfg not in antROUTE){
          let Sum=Sum+(a[from_city][lfg]**B*float(mas[from_city][lfg])**A)
        }
      }
      kf.append(Sum)
      for (let j=0; j<a[from_city].length;j++){
        if (j not in antROUTE){
          let lk=a[from_city][j]**B*float(mas[from_city][j])**A
          if (kf[k]!=0){
            Zero[from_city][j]=lk/kf[k]
          }else{
            Zero[from_city][j]=1
          }
        }
      }
      if (antROUTE.length<>5){
        let isNotChosen = True
        while (isNotChosen){
          var rand = random.random()
          for (p=0;p<Zero[from_city].length;p++){
            if (p >= rand){
              let indexi=0
              for (i=0;i<Zero[from_city].length;i++){
                if ((p==Zero[from_city][i]) and (i not in antROUTE)){
                  let indexi=i
                }
              }
              let td[o][k+1]=indexi
              let from_city=indexi
              antROUTE.push(from_city)
              let isNotChosen = False
              break
            }
          }
        }
      }else{
        break
      }
      for (ih=0;ih<mas.length;ih++){
        for (jh=0;jh<mas[ih].length;jh++){
          let mas[ih][jh]=mas[ih][jh]*ji
        }
      }
      for (i=0;i<(td.length-1);i++){
        let dsd=0
        var Trass=[]
        var TimeWR=[]
        let TimeW=0
        for (j=0;j<(td[i].length-1);j++){
          Trass.push(td[i][j])
          if (td[i][j+1]==td[i][s-1]){
            Trass.push(td[i][j+1])
          }
          let fr=td[i][j]
          let fr1=td[i][j+1]
          let dsd=dsd+a[fr][fr1]
          
        }
        let tic=dsd/50*60
        let TimeW=tic+30*s
        TimeWR.push(TimeW)
        if (dsd<mnTrass and sum(TimeWR)<=TimeOclc(TimeAll,Time)){
          let mnTrass=dsd
          let bestT=Trass             
          }
        let L=q/dsd
        for (klo=0;klo<(td[i].length-1);klo++){
          if (sum(TimeWR)<=TimeOclc(TimeAll,Time)){
            let fr2=td[i][j]
            let fr3=td[i][j+1]
            mas[fr2][fr3]=mas[fr2][fr3]+L
            mas[fr3][fr2]=mas[fr3][fr2]+L
          }
        }
      }
    }
  }
}
print(mnTrass, bestT,TimeWR)
