df<-read.csv('iris.csv')
df
#Naive Bayes
nb<-naive_bayes(df$sepal_length, df$sepal_width)
plot(nb)

#K-means
irisCluster <- kmeans(df[, 3:4], 3, nstart = 20)
plot(irisCluster$cluster)

#Logistic Reg
res<-glm(formula = y ~ sepal_length + sepal_width, data = df, family = binomial)
print(summary(res))

#Linear reg
re <- lm(y~df$sepal_length+df$sepal_width)
print(re)

#KNN
train <- rbind(df[1:25,,1], df[1:25,,2], df[1:25,,3])
test <- rbind(df[26:50,,1], df[26:50,,2], df[26:50,,3])
cl <- factor(c(rep("s",25), rep("c",25), rep("v",25)))
knn(train, test, cl, k = 3, prob=TRUE)

#Decision Trees
result<-ctree(y~sepal_length+sepal_width, data = df)
plot(result)