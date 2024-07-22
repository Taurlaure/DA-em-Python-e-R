#Histograma
trees
hist(trees$Height)
hist(trees$Height, main="Arvores", ylab="Frequencia",xlab="Altura", col="blue")
hist(trees$Height, main="Arvores", ylab="Frequencia",xlab="Altura", col="blue" , density=20, breaks=20)

#densidade
densidade = density(trees$Height)
plot(densidade)
