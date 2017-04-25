#after doomsday practice
#geo fresh
rm(list=ls(all = TRUE))
x<- c(1:5)
#陣列
a01 <- array(x, c(4,7))
a02 <- array(x,c(2,3,4,5))
a03<-array(x,c(10))
a04<-array(x,c(2,5))

#利用matrix可能有些問題
#建議用array
m01 <- matrix(x, nrow = 3, ncol = 5)
m01 <- matrix(x, nrow = 3, ncol = 6)
m02 <- matrix(x, 3, 5)
m03 <- matrix(x,3,4,byrow = TRUE)

#identical<-判斷資料
#中括弧:找資料
m01[,3]

#轉置矩陣
m01t<-t(m01)
print(m01t)

#矩陣運算:%*%
y<-c(15:19)
m05<- matrix(x,5,3)
print(m05)
m007<-m05%*%m02
print(m007)

#diag:爪對角or建立對角線
diag(m05)

diag(c(35,23,56,78),4,9)

#det:方陣行列式
mm05<-matrix(y,6,6)
det(mm05)
mm06<- mm05[2:5,2:5]
solve(mm06)


x<-c(5,6,4,3,5,6,7,8,9,9)
mm07<- array(x,c(6,6))
det(mm07)

#colsums 以及 rolsums
#length:長度


y<-c(BYR=1994, NM = "Bob", GD = "M",ST = TRUE)
#全部變字串了!

#用list(列表)可以儲存不同格式
z<-list(y)
class(z)

#用as.list來轉變
w<-as.list(y)
class(w)

#建立資料框
BYR <- c(1994,1993,1997,1688,1924)
NM <- c("Jake","Wang","DUKER","Old Gen", "Enterprise")
FP <- c("M","M","L","L","XL")
EXTT<-c(TRUE, TRUE, FALSE,TRUE,TRUE)

plotter<-list(BYR,NM,FP,EXTT)

