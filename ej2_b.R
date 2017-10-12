dataset <- read.table("/home/agrup/Escritorio/Unlu/2017-2do/Masivas/tp03/ds/encuesta_universitaria.csv", header=TRUE, 
                      sep=",")
BindeqAncho<-function(Datos,ab){
  datatime<- sort(Datos)
  max=max(datatime)
  min=min(datatime)
  rango = max-min
  j=1
  #rango=length(datatime)
  #nl=round(rango/ab)
  c=0
  cb = round(rango/ab)
  aux<-0
  a=min
  b=min+ab
  for(i in 1 :cb){
    while ( (datatime[j] <= b) & (j <= length(datatime) )){
    c=c+1
    j=j+1
    }
    aux[i]<-c
    c=0
    a=b
    b=b+ab
  }

  return(aux)
}

barplot(BindeqAncho(dataset$Tiempo_Traslado,50))

