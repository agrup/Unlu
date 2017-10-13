dataset <- read.table("/home/agrup/Escritorio/Unlu/2017-2do/Masivas/tp03/ds/encuesta_universitaria.csv", header=TRUE, 
                      sep=",")
NormalizacionZscore<- function(Datos){
  Datos<-sort(Datos)

  aux<-0
  l=length(Datos)
  media=mean(Datos)
  desvio=sd(Datos)
  for (i in 1 :l){
    v=Datos[i]
    if(!is.na(v)){
      nV=(v-media)/desvio}
    aux[i]<-nV
  }
  return(aux)
}

plot((NormalizacionZscore(dataset$Tiempo_Traslado)))