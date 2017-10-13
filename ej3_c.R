dataset <- read.table("/home/agrup/Escritorio/Unlu/2017-2do/Masivas/tp03/ds/encuesta_universitaria.csv", header=TRUE, 
                      sep=",")
Normalizaciondecimal<- function(Datos){
  Datos<-sort(Datos)
  aux<-0
  l=length(Datos)
  m=max(Datos)
  c=0
  print (m)
  while(m>0.9999999){
    m = (m/10)
    print (m)
    c=c+1
  }
  e=10^c
  print (e)
  for (i in 1 :l){
    v=Datos[i]
    if(!is.na(v)){
      nV=v/e}
    aux[i]<-nV

  }
  return(aux)
}

plot((Normalizaciondecimal(dataset$Tiempo_Traslado)))