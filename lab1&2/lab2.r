install.packages("ggplot2")

df = read.csv("iris-data.csv", header = TRUE)

plot(df)
plot(y=df$class, x=df$petal_length_cm, xlab = "petal length", ylab = "class")
legend(1, 10, legend = c("class", "petal length"), col=c("red", "blue"))

str(df)
hist(df$sepal_length_cm)

x = c(1, 10, 40, 5)
lab = c("A", "B", "C", "D")
pie(x, lab)

boxplot(df$petal_length_cm)
barplot(df$sepal_length_cm)


t = 0:5
formula = exp(-t/2)
w = 0.1*exp(t/2)
plot(t, formula, lwd=2, type = 'l', col = "red")
lines(t, w, col="green", lwd=2)
title("exp graph")
legend("top" , c("a", "b"), col=c("red", "green"), lwd=c(3, 2))




#naivebayes

