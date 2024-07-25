#Graficos basicos 2

#boxplot, parametros e alterações na visualização
boxplot(trees$Volume, main="Arvores", xlab="Volume")
boxplot(trees$Volume, main="Arvores", xlab="Volume", col="blue", horizontal=TRUE)
boxplot(trees$Volume, main="Arvores", xlab="Volume", col="blue", outline=F)

#notch, gera um corte na regiao da mediana
boxplot(trees$Height, main="Arvores", xlab="Volume", col="blue", notch=TRUE)
#dados do grafico
boxplot.stats(trees$Height)
#lê apenas uma informação (stats,n,conf,out)
boxplot.stats(trees$Height)$stats

#é possivel plotar varios graficos , para comparar
boxplot(trees)

#Agregação de valores iguais. Count
InsectSprays
spray = aggregate(. ~ spray,data=InsectSprays,sum)
spray

#Grafico de barras
#executar com ctrl+shift+enter
barplot(spray$count,col= gray.colors(6), xlab="Spray", ylab="Total", names.arg = spray$spray)
box()#fecha a moldura do grafico

#Grafico de setor - pizza
pie(spray$count, labels= spray$spray, main = "Spray", col=c(58:63))
#adicionando legendas
pie(spray$count, labels= NA, main = "Spray", col=c(1:6))
legend("bottomright", legend = spray$spray, cex=1, fill=c(1:6))
