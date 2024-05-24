#Limpeza e Tratamento de Dados
#importa dados, string vazio como NA, string como fatores

dados = read.csv("Churn.csv" , sep = ";" , na.strings = "" , stringsAsFactors = T)
head(dados)
summary(dados)

#Colunas

#Dar nomes corretos as colunas

colnames(dados) = c("ID","SCORE","ESTADO","GENERO","IDADE","PATRIMONIO","SALDO","PRODUTOS","TEMCARTCREDITO","ATIVO","SALARIO","SAIU")
head(dados)

#Explorar dados , colunas categóricas

#Estados

countsEstado = table(dados$ESTADO)
countsEstado
barplot(countsEstado, main="ESTADOS" , xlab = "Estados")  

#Generos
countsGenero = table(dados$GENERO)
barplot(countsGenero, main="GENEROS" , xlab = "GENEROS")

#Explorar colunas numericas

summary(dados$SCORE)
boxplot(dados$SCORE)
hist(dados$SCORE)
