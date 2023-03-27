#1
#1(a)

math1.score <- sample(0:100,500, replace = TRUE)
x1 <- math1.score >=60
sum(x1)
#1(b)

n=1:250
mean(math1.score[2*n-1])
#1(c)

min(math1.score[which((math1.score >=60)==TRUE)])


#1(d)

t <- (math1.score-mean(math1.score))/sd(math1.score)
t[1:10]
 
#1(e)

math2.score <- sample(10:90,500, replace = TRUE)
x2 <- math2.score >=60
x3 <- x1==TRUE & x2== TRUE
sum(x3)

#1(f)

x4 <- math1.score < math2.score
sum(x4)/500

#1(g)

math3.score <- math1.score*0.65 +math2.score*0.35
math3.score[490:500]

#2
#2(a)

n=1:10
a <- matrix(n, nrow = 10, ncol = 1)
b <- matrix((1+1/n)^n)
c <- matrix((-1)^(n+1)/(2*n-1))
d <- matrix((n+3)/(n+8))
cbind(a,b,c,d)

#2(b)
#若x大於10，則印出"Above ten"。
#   在x大於102的條件下，若x大於20，則額外印出"and also above 20!"，若x小於20，則額外印出"but not above 20!"
#若x小於10，則印出"below 10"


#3
var.random <- function(n){
  k <- 1:n
  p <- (2*k)/(n*(n+1))
  mu <- sum(k*p)
  var<- sum(((k-mu)^2)*p)
  return(var)
}


















