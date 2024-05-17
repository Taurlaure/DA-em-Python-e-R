#Limpeza e Tratamento de Dados
#importa dados, string vazio como NA, string como fatores
dados = read.csv("Churn.csv" , sep = ";" , na.strings = "" , stringsAsFactors = T)
head(dados)
  
  