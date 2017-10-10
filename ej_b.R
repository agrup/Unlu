TransformarAbinSimetrico<-function(Origen,CantidadRangos){
  dataset <- sort(Origen)
  Largo = length(dataset)
  CopiaDatasets<-0
  LargoRango=(Largo/CantidadRangos)
  a=0
  b=LargoRango
    for(j in 1:CantidadRangos){
      CopiaDatasets[j]<- mean(dataset[a:b])
      a=a+LargoRango
      b=b+LargoRango
    }
  return(CopiaDatasets)
  }
plot(TransformarAbinSimetrico(ruidoso$Road_55dB,11))
plot(TransformarAbinSimetrico(ruidoso$Road_60dB,11))
plot(TransformarAbinSimetrico(ruidoso$Railways_65dB,11))
plot(TransformarAbinSimetrico(ruidoso$Industry_65dB,11))

