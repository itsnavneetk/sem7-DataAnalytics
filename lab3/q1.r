#1
df = read.csv("OnlineRetail.csv", header = TRUE)
df

#2
itemUK = df[df$Country =="United Kingdom", ]
itemUK = sum(itemUK$Quantity)
itemUK

#3
item = df[df$CustomerID=="17850", ]
item = item[item$InvoiceDate=="01-12-10 8:26", ]

item = na.omit(item)
total = sum(item$Quantity*item$UnitPrice)
total

#4
itemF = df[df$Country =="France", ]

install.packages("data.table")
library(data.table)

item.dt = data.table(itemF)
item.dt = item.dt[,list(s=sum(Quantity)), by='StockCode']
item.dt$s
item = max(item.dt$s)
item.dt[item.dt$s==item, ]


#5
df = read.csv("OnlineRetail.csv", header = TRUE)
df$InvoiceDate <- as.Date(as.character(df$InvoiceDate), "%d-%m-%y")


item11 = df[df$InvoiceDate>"2011-07-01" & df$InvoiceDate<"2011-10-01", ]
tail(item11$InvoiceDate)
tail(item11$StockCode)
#avg sale
item = na.omit(item11)
total113 = sum(item11$Quantity*item11$UnitPrice)
total113

item.dt = data.table(item11)
item.dt = item.dt[,list(s=sum(Quantity)), by='StockCode']
item.dt$s
item = max(item.dt$s)
item.dt[item.dt$s==item, ]

#6
df = read.csv("OnlineRetail.csv", header = TRUE)
df$InvoiceDate <- as.Date(as.character(df$InvoiceDate), "%d-%m-%y")
item11 = df[df$InvoiceDate>"2011-04-01", ]
item11 = df[df$InvoiceDate<"2011-04-31", ]
mean(item11$UnitPrice*item11$Quantity)

#7
df = read.csv("OnlineRetail.csv", header = TRUE)
df$InvoiceDate <- as.Date(as.character(df$InvoiceDate), "%d-%m-%y")

item11 = df[df$InvoiceDate>"2010-12-01" & df$InvoiceDate<"2011-2-01", ]
tail(item11$InvoiceDate)

#avg sale
item = na.omit(item11)
total10 = sum(item11$Quantity*item11$UnitPrice)
total10

#8
df = read.csv("OnlineRetail.csv", header = TRUE)
df$InvoiceDate <- as.Date(as.character(df$InvoiceDate), "%d-%m-%y")
item11 = df[df$InvoiceDate>"2010-12-01" & df$InvoiceDate<"2010-12-31", ]

item.dt = data.table(item11)
item.dt = item.dt[,list(s=sum(Quantity)), by='CustomerID']
length(item.dt$CustomerID)

#9
df = read.csv("OnlineRetail.csv", header = TRUE)
df$InvoiceDate <- as.Date(as.character(df$InvoiceDate), "%d-%m-%y")
item11 = df[df$InvoiceDate>"2011-01-01" & df$InvoiceDate<"2011-04-01", ]
tail(item11$InvoiceDate)
#avg sale
item = na.omit(item11)
total111 = sum(item11$Quantity*item11$UnitPrice)
total111

item11 = df[df$InvoiceDate>"2011-04-01" & df$InvoiceDate<"2011-07-01", ]
tail(item11$InvoiceDate)
#avg sale
item = na.omit(item11)
total112 = sum(item11$Quantity*item11$UnitPrice)
total112

item11 = df[df$InvoiceDate>"2011-10-01" & df$InvoiceDate<"2011-12-31", ]
tail(item11$InvoiceDate)
#avg sale
item = na.omit(item11)
total114 = sum(item11$Quantity*item11$UnitPrice)
total114

val = c(total111, total112, total113, total114)
plot(val)




x = list(1,2,3,4,5,6,7,8,9,10)
x[lapply(x, "%%", 2) != 0]
