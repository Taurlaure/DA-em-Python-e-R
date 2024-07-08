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

#Idade
summary(dados$IDADE)
boxplot(dados$IDADE)
hist(dados$IDADE)

#Saldo
summary(dados$SALDO)
boxplot(dados$SALDO)
hist(dados$SALDO)

#Salário
summary(dados$SALARIO)
boxplot(dados$SALARIO)
boxplot(dados$SALARIO,outline = F)

#Valores faltantes em NA'S

dados[!complete.cases(dados),]

#Salarios

#tratar salarios
summary(dados$SALARIO)
#ver mediana
median(dados$SALARIO, na.rm = T)
#atribuir mediana nos NAs
dados[is.na(dados$SALARIO),]$SALARIO = median(dados$SALARIO,na.rm = T)
#buscar NAS em salario para checar
dados[!complete.cases(dados$SALARIO),]

#Falta de padronização de genero

#ver valores
unique(dados$GENERO)
summary(dados$GENERO)
#transformar F e Fem em Feminino
#"", M em Masculino (moda)
dados[is.na(dados$GENERO) | dados$GENERO == "M",]$GENERO = "Masculino"
dados[dados$GENERO == "F" | dados$GENERO == "Fem",]$GENERO = "Feminino"
#ver resultados
summary(dados$GENERO)
#remover levels nao utilizados
dados$GENERO = factor(dados$GENERO)
#visualizar novamente
summary(dados$GENERO)

#Idades fora do dominio

summary(dados$IDADE)
#fora do dominio numerico , ver idades anormais
dados[dados$IDADE<0 | dados$IDADE>110,]$IDADE
#não temos idade NAs
dados[is.na(dados$IDADE),]
#opção , preencher com mediana
median(dados$IDADE)
#substituição
dados[dados$IDADE<0 | dados$IDADE>110,]$IDADE = median(dados$IDADE)
dados[dados$IDADE<0 | dados$IDADE>110,]
summary(dados$IDADE)
