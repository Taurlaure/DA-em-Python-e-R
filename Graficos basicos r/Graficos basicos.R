#Histograma
trees
hist(trees$Height)
hist(trees$Height, main="Arvores", ylab="Frequencia",xlab="Altura", col="blue")
hist(trees$Height, main="Arvores", ylab="Frequencia",xlab="Altura", col="blue" , density=20, breaks=20)

#densidade
densidade = density(trees$Height)
plot(densidade)

#Densidade sobre o histograma, parametro par

hist(trees$Height, main=NULL, xlab=NULL)
par(new=TRUE)
plot(densidade)

#Dispersao (usado para comparar variaveis continuas , ex circunferencia com o volume)
plot(trees$Girth, trees$Volume)
plot(trees$Girth, trees$Volume, main="Arvores")
plot(trees$Girth, trees$Volume, ylab="Circunferencia", xlab="Volume", col="blue" ,main="Arvores")
#pch muda o elemento do grafico
plot(trees$Girth, trees$Volume, ylab="Circunferencia", xlab="Volume", col="blue" ,main="Arvores", pch=20)

#Mudar o tipo
plot(trees$Girth, trees$Volume, ylab="Circunferencia", xlab="Volume", col="blue" ,main="Arvores", pch=20, type="l")

#tremulação, diminui a sobreposição
plot(jitter(trees$Girth), trees$Volume, ylab="Circunferencia", xlab="Volume", col="blue", main="Arvores")

#legenda com dimensao categorica, separar cotegorias por cor
CO2
plot(CO2$conc, CO2$uptake, pch=20, col= CO2$Treatment)
legend("bottomright", legend=c("nonchilled","chilled"),cex=1, fill=c("black","red"))

plot(trees)

#divisao de tela
#executar com ctrl+shift+enter
split.screen(figs=c(2,2))
screen(1)
plot(trees$Girth, trees$Volume)
screen(2)
plot(trees$Girth, trees$Height)
screen(3)
plot(trees$Height, trees$Volume)
screen(4)
hist(trees$Volume)
close.screen(all=TRUE)
