tempo = read.csv("Tempo.csv" , sep = ";" , na.strings = "" , stringsAsFactors = T)
head(tempo)
summary(tempo)

#valores faltantes em NAs
tempo[!complete.cases(tempo),]

#tratando fora do dominio aparencia
summary(tempo$Aparencia)
tempo[is.na(tempo$Aparencia),]
#opção de preencher com a mediana
#substituição com moda
tempo[tempo$Aparencia == 'menos' ,]$Aparencia = 'sol'
summary(tempo$Aparencia)
#remove levels nao utilizados
tempo$Aparencia = factor(tempo$Aparencia)
summary(tempo$Aparencia)

#Temperatura, tratar dominio
summary(tempo$Temperatura)
#ver temperaturas anormais em F
tempo[tempo$Temperatura < -130 | tempo$Temperatura > 130 ,]$Temperatura
#Sem NAs
tempo[is.na(tempo$Temperatura),]
#opção, preencher com mediana
median(tempo$Temperatura)
#substituir
tempo[tempo$Temperatura < -135 | tempo$Temperatura > 130 ,]$Temperatura = median(tempo$Temperatura) 
#consulta demais
tempo[tempo$Temperatura< -135 | tempo$Temperatura > 130 ,]$Temperatura
summary(tempo$Temperatura)
