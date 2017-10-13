dataset <- read.table("/home/agrup/Escritorio/Unlu/2017-2do/Masivas/tp03/ds/encuesta_universitaria.csv", header=TRUE, 
                      sep=",")
NormalizacionMaxMin<- function(Datos,nMax,nMin){
  Datos<-sort(Datos)
  mx=max(Datos)
  mn=min(Datos)
  aux<-0
  l=length(Datos)
  for (i in 1 :l){
    v=Datos[i]
    if(!is.na(v)){
    nV=(((v-mn)/(mx-mn))*(nMax-nMin))+nMin}
    aux[i]<-nV
    print(nV)
  }
  return(aux)
}

plot((NormalizacionMaxMin(dataset$Tiempo_Traslado,1,0)))
