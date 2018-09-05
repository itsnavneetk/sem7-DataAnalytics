df<-read.csv('iris.csv')
df

stripchart(df$petal_length)

hist(df$sepal_length)


plot(df$sepal_length, df$sepal_width, col='green')
legend("bottomleft", legend=c("Sepal Length"), pch = c(1,1), col = 'green')

x<-c(20,14,12,44,10)
lab<-c('A','B','C','D','E')
pie(x,lab)

boxplot(df$sepal_length)

barplot(df$sepal_length)

ggplot(data=df, aes(df$sepal_length))+geom_histogram()

f = df$sepal_length
lel = f/5
lines(lel, f, lwd=1, col="blue")
