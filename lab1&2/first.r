x = 5 + 8
mode(x)

x = 5 / 0
print(x)

x = 9.00
print(x)
mode(x)

y = 9.54
mode(y)

y = "hello"
mode(y)

y = c(3, 4, 6, 1, 5)
mode(y)
table(y)

list1 = list(3, 4, 2, 5)
print(list1)

M = matrix( c('a','a','b','c','b','a'), nrow = 2, ncol = 3)
print(M)



a <- array(c('g','y'),dim = c(3,4))
print(a)
factor(a)
factor(a[1])

BMI <- 	data.frame(
  gender = c("Male", "Male","Female"), 
  height = c(152, 171.5, 165), 
  weight = c(81,93, 78),
  Age = c(42,38,26)
)
print(BMI)



imp = read.csv("test.csv")
print(imp)

imp$a
max(BMI$height)
round(max(BMI$height))


seq1 = seq(5:10)
seq1
 

r = rep(1, 30)
r

v = c(1:100)
for(i in v){
  if(i%%2!=0)
    print(i)
}



m <- matrix(data=cbind(rnorm(30, 0), rnorm(30, 2), rnorm(30, 5)), nrow=30, ncol=3)
m


testfun <- function(a) {
  for(i in 1:a) {
    b <- i^2
    print(b)
  }
}	
testfun(10)
