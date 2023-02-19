import random
a=[[0,2,3,4,5],[2,0,4,5,6],[3,4,0,7,8],[4,5,7,0,10], [5,6,8,10,0]]
TimeAll=[['Пн', '12:00-18:00'],['Вт','12:00-18:00'],['Ср', '10:00-19:00'],['Чт', '12:00-18:00'],['Пт', '14:00-21:00'],['Сб', 'выходной'],['Вс','выходной']]
Time=['Пн', '14:20']
def TimeOclc(TimeAll, Time):
      t=str(Time[1])
      time=int(t[:2])*60+int(t[3:5])
      indices = [(i, x.index(Time[0])) for i, x in enumerate(TimeAll) if Time[0] in x]
      s=str(indices[0])
      d=list(s)
      i=int(str(int(d[4])+1))
      j=int(str(int(d[1])))
      win=TimeAll[j][i]
      if win=='выходной':
            return False
      else:
            time1=int(win[:2])*60+int(win[3:5])
            time2=int(win[6:8])*60+int(win[9:11])
      if time1<=time and time<=time2:
            return time2-time
      else:
            return False


s=5
A=1
B=1
ji=0.64 #ВАЖНО
d=[]
Ages=100
q=8
mnTrass=1000000000000
bestT=[]
mas = [0.2] * s
for i in range(s):
    mas[i] = [0.2] * s
ant=10
for fg in range(Ages):
      td=[0]*ant
      for i in range(ant):
            td[i] = [0] * s
      for o in range(ant):
            kf=[]
            antROUTE=[]
            from_city=0
            antROUTE.append(from_city)
            Zero=[]
            for i in range(s):
                  m = [0] * s
                  Zero.append(m)
            for k in range(s):
                  Sum=0
                  for lfg in range(len(a[from_city])):
                        if lfg not in antROUTE:
                              Sum=Sum+(a[from_city][lfg]**B*float(mas[from_city][lfg])**A)
                  kf.append(Sum)
                  for j in range(len(a[from_city])):
                        if j not in antROUTE:
                              lk=a[from_city][j]**B*float(mas[from_city][j])**A
                              if kf[k]!=0:
                                    Zero[from_city][j]=lk/kf[k]
                              else:
                                    Zero[from_city][j]=1
                  if len(antROUTE)!=5:
                        isNotChosen = True
                        while isNotChosen:
                              rand = random.random()
                              for p in Zero[from_city]:
                                    if p >= rand:
                                          indexi=0
                                          for i in range (len(Zero[from_city])):
                                                if p==Zero[from_city][i] and i not in antROUTE:
                                                      indexi=i
                                          td[o][k+1]=indexi
                                          from_city=indexi
                                          antROUTE.append(from_city)
                                          isNotChosen = False
                                          break
                  else:
                        break
      for ih in range(len(mas)):
            for jh in range(len(mas[ih])):
                  mas[ih][jh]=mas[ih][jh]*ji
      for i in range(len(td)-1):
            dsd=0
            Trass=[]
            TimeWR=[]
            TimeW=0
            for j in range(len(td[i])-1):
                  Trass.append(td[i][j])
                  if td[i][j+1]==td[i][s-1]:
                        Trass.append(td[i][j+1])
                  fr=td[i][j]
                  fr1=td[i][j+1]
                  dsd=dsd+a[fr][fr1]
            tic=dsd/50*60
            TimeW=tic+30*s
            TimeWR.append(TimeW)
            if dsd<mnTrass and sum(TimeWR)<=TimeOclc(TimeAll,Time):
                  mnTrass=dsd
                  bestT=Trass             
            L=q/dsd
            for klo in range(len(td[i])):
                  if sum(TimeWR)<=TimeOclc(TimeAll,Time):
                        fr2=td[i][j]
                        fr3=td[i][j+1]
                        mas[fr2][fr3]=mas[fr2][fr3]+L
                        mas[fr3][fr2]=mas[fr3][fr2]+L
print(mnTrass, bestT,TimeWR)
