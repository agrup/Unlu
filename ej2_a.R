dataset <- read.table("/home/agrup/Escritorio/Unlu/2017-2do/Masivas/tp03/ds/encuesta_universitaria.csv", header=TRUE, 
                     sep=",")
BindeqFrec<-function(Datos,cb){
datatime<- sort(Datos)
max=max(datatime)
min=min(datatime)
#rango = max-min
rango=length(datatime)
nl=round(rango/cb)
aux<-0
a=0
b=nl
for(i in 1 :cb){
  aux[i]<-length(datatime[a:b])
  a=b
  b=b+nl
  }
return(aux)
}
length(dataset$Tiempo_Traslado)
barplot(BindeqFrec(dataset$Tiempo_Traslado,5))
