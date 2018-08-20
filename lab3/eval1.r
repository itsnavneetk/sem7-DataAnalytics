df = read.csv("iris.csv")

install.packages("partykit")
library(partykit)
result<-ctree(y~df$sepal_length_cm+df$sepal_width_cm, data = df)
plot(result)
