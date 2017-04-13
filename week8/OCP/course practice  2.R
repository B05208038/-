#created on Mar 28, 2017 by J_W YEH
#Second course practice
rm(list=ls(all=TRUE))
#setwd(" ")
3>=5
x <- c(1,2,3,NA)
print(x)
XX <- x+4 
print(XX)
#對數計算
x <- c(0,1,2)
print(x)
log(x)
'•NA or “Not Available”–  Applies to many modes –character, numeric, etc.
 •NaN or “Not a Number”–  Applies only to numeric modes
 •NULL–  Lists with zero length'
#vector之中建立的資料型態(c())需要相同
#name 以及 element的vector
x<- c(1,2,3)
x<- c(A = 21,B = 32,C = 53)
class(x)
length(x)
#用名字去找
x["C"]
'–x[i]：回傳向量元素所有資訊–  x[[i]]：只回傳向量元素的值
 –x[[元素名稱]]：只回傳向量元素的值
 –x[元素名稱]：回傳向量元素所有資訊
rep:重複, 可以用再時間序列 ex:每天24hr, 一年365天 <- rep(1:24, time = 365)'
x<- rep(3:9, time= 3, each = 2)
x
dailydata <- rep(1:24, time = 365)

####
a <- c(1,2,3,4)
b <- c(4,5)
a+b
#b被重複使用  
x <- c(3,5,6,9)
z <- array(x, c(5,7))
z
x
z[5,]
z[,3]
length(z)
dim(z)
aperm(z) #轉置陣列

####
#因子:factor
factor(z)
# 資料篩選
a<-c(1,2,1,NA,2)
factor(a)
factor(a, exclude = NA)
factor(a, exclude = 2)

x<-c(3,2,3,7,8,9,5,7,4,2,1,4,5,6,8,7,4)
x1 <- factor(x, exclude = 4)
x1
x2 <- factor(x, exclude = c(2,4,6,8))
x2

x3<- rbind(x1)
x4<- cbind(x2)
x3
x4

###############################################
#條件式篩選
Tair<-c(24,3,25.7,28.6,24.6,24.8,29.8,27.6,30.8,27.8,29.3)
stid<-c(206:215)

which(Tair>27.0)
which(Tair>27.0&Tair<28.0)

Tair[which(Tair>27.0&Tair<28.0)]
which(Tair<25.0)
Tairb25<- Tair[which(Tair<25.0)]
Tair[which(Tair<25.0)] <- NaN
Tair
###############################################
Tair<-c(24.3,25.7,28.6,24.6,24.8,29.8,27.6,30.8,27.8,29.3)
stid<-c(206:215)
stid[which(Tair<25.0)]
#csv:comma seperated value