df = read.csv("wine.csv", header=TRUE)
str(df)
install.packages("GGally")
library(GGally)
cor(df$quality, df$fixed.acidity)
ggcorr(df$quality, df$fixed.acidity)
#1
ggcorr(df[,1:12])

#2
maxQ = max(df$quality)
maxQ
obs = df[df$quality==maxQ, ]
length(obs)

#3
sugar = round(df$residual.sugar)
sugar = as.factor(sugar)
table(sugar)

#4
ph = df$pH
ph
mean = mean(ph)
#mean = apply(df$pH, mean)
mean
