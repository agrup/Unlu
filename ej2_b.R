dataset <- read.table("/home/agrup/Escritorio/Unlu/2017-2do/Masivas/tp03/ds/encuesta_universitaria.csv", header=TRUE, 
                      sep=",")
BindeqAncho<-function(Datos,ab){
  datatime<- sort(Datos)
  max=max(datatime)
  min=min(datatime)
  rango = max-min
  #rango=length(datatime)
  #nl=round(rango/ab)
  cb = round(rango/ab)
  aux<-0
  a=min
  b=min+ab
  for(i in 1 :cb){
    aux[i]<-length(datatime)
    a=b
    b=b+ab
  }
  return(aux)
}
length(dataset$Tiempo_Traslado)
barplot(BindeqFrec(dataset$Tiempo_Traslado,11))

plot(dataset$Tiempo_Traslado)
