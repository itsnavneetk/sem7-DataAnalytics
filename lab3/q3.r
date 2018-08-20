
titanic = read.csv(file="titanic.csv", stringsAsFactors = FALSE, header = TRUE)
tail(titanic.train)
ageavg = titanic[titanic$Pclass=="3", ]
ageavg = na.omit(ageavg)
age = as.numeric(ageavg$Age)
mean(age)


#2
age = titanic[titanic$Pclass=="1", ]
cage = age[is.na(age$Age), ]
length(cage)

#3
sur = titanic[titanic$Pclass=="2", ]
sur = sur[sur$Sex=="female", ]
sur$Age = as.numeric(sur$Age)

sur = sur[sur$Age>=10, ]
sur = sur[sur$Age<20, ]
sur$Name
