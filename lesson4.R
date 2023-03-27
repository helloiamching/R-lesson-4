# if else
#array/matrix
#function





#矩陣部份選取
# rbind, cbind, apply with (sum, max, min, etc.)
#Ex: do

A <- matrix(1:10, 2,5)
A[2,2]
A[,2]
B <- matrix(11:20, 2,5)
C <- rbind(A,B)
cbind(C,1:4)

# margin

sum(C[,1])
sum(C[1,])

#apply(C, 1, min)
apply(C,1,sum) 
apply(C,2,sum) 


#Exercise A

# Let 𝑋𝑖 (解釋變數) be uniform random number in (-10, 10)
# 𝜀𝑖(誤差)be N(0,8)
# 𝑌 =1+0.5×𝑋 +𝜀,𝑖=1,2,...,200 𝑖𝑖𝑖
# Do the following:

x <- runif(1,max = 10, min = -10)
n = 1:200
E <- sample(0:8, 1)
y <-1+0.5*x+E
y

# define function
#Usage:
#  f <- function(x){
#  工作項目
#  return(y)
#  }
#  f是命名
#  x 是(input)變數, 可以多個變數; x的維度可以>1 
#  y是return(輸出)變數,可以多個結果

##Exercise B

# Define𝑓𝑥 =𝑥3−𝑥+1 
# Find𝑓 6
f <- function(x){y=x^3-x+1
  return(y)}
f(6^(1/2))

# Let𝑆 𝑎,𝑟,𝑛 是一個計算前𝑛個等比數列的總和,
# 其中 𝑎是首項, 𝑟是公比
# Find𝑆 (2.1,0.5,100)

f2 <- function(a,r,n){y=sum(a*(r*n-1))
  return(y)}

f2(2.1,0.5,100)

# Exercise C
# 丟3顆公平的骰子，寫一R函式，印出總和並做如下判別:
# 如果和大於 13 點，則印出「Good」，
# 反之 印出「Good luck」

f3 <- function(n){
       a <-sample(1:6,n)
       b <- sum(a)
       if(b>13){return(print("Good"))
       }else(return(print("Good luck")))
       }
f3(3)

#More Example
mean.var.fun <- function(x){
            n <- length(x)
           mx <- sum(x)/n
             a<-(x-mx)^2
           vx <- sum(a)/(n-1)
           ans <- list(mx, vx)
   names(ans) <- c("mean", "var") 
   return( ans )
}


#有一 50 筆課業成績資料如下
#score <- sample(0:100, 50, replace = TRUE)
# 開根號再乘以10」是成績調分方式，請寫一函式，
# 輸入為全班學生課業之成績，回傳:
#  (1) 分數調整前被當學生之比例(raw) 
#  (2) 分數調整前最高之成績(max.raw)
#  (3) 分數調整後被當學生之比例(fail.per)
#  (4) 分數調整後最高之成績(max.curved)


score <- sample(0:100, 50, replace = TRUE)
score
f4 <-function(x,n){
  x2 <- x^(1/2)*10
  q1 <- x<=60
  q12<- sum(q1)/n
  q2 <-max(x)
  q3 <- x2<=60
  q32 <-sum(q3)/n
  q4 <-max(x2)
  q <-c(q12,q2,q32,q4)
  return(q)
}

f4(score,50)





