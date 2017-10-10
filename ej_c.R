TransMedianas<-function(Origen,tamanioBin){
  dataset=sort(Origen)
  aux<-0
  a = 0
  b=tamanioBin
  i=0
  while(a<= length(dataset)-1){
    aux[i]<-median(dataset[a:b])
    a=b
    b=b+tamanioBin
    i=i+1

    
  }
  return(aux)
}
plot(TransMedianas(ruidoso$Road_55dB,2))
plot(TransMedianas(ruidoso$Road_55dB,4))
plot(TransMedianas(ruidoso$Road_55dB,6))
plot(TransMedianas(ruidoso$Road_55dB,8))
plot(TransMedianas(ruidoso$Road_55dB,10))