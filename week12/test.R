#function:建立方法
setwd("C:/Users/acer/NTU_freshman_Introduction_to_Computer_and_Programming_Geography_department/week12")
Es.kPa<- function(Ta){
  a<- 17.5*Ta/(240.97+Ta)
  es<-0.611*exp(a)
  return(es)
}
Ea.kPa<- function(Ta, RH){
  a<-17.5*Ta/(240.97+Ta)
  es<-0.611*exp(a)
  ea<-es*RH/100
  return(ea)
}
cwb<-read.table("cwb_466920_2006.csv", header = TRUE, sep = ",")
#使用函數
es<-Es.kPa(cwb$T.air)
ea<-Ea.kPa(cwb$T.air, cwb$RH)

#安裝封包
#install.packages("data.table")
#使用封包
library(data.table)
F2<-fread

Sys.Date()
today<-Sys.Date()
class(today)

datec<- "2017-05-09"
datec1<- "2017-06-20"
class(datec1)
datec1<-as.Date(datec1)
DD<- datec1 - today
DD
#轉換date格式，用as.Date
date01.1<-format(today, "%d-%m-%Y")
date01.2<-format(today, "%d/%m/%Y")
date01.3<-format(today, "%d%m%Y")
date01.4<-format(today, "%d.%m.%Y")
date01.5<-format(today, "%Y%m%d")
F1date<-as.Date(cwb$Date, "%Y%m%d")
#轉換日期格式:
F1date<-as.Date(cwb$Date, "%Y%m%d")
F1date<-as.Date(as.character(cwb$Date), "%Y%m%d")

#Union
x<-c(1:8)
y<-seq(10,-10,-2)
z<-c(x,y)
w<-union(x,y)
#不能用rbind
#z1<-rbind(x,y)


x01<- c("Adam", "Bob", "Charte", "Diana")
x02<- c(56,45,63,59)
y01<- c("Adam", "Bob", "Charte", "Diana")
y02<-c(43,5,1235,235)
x<-cbind(x01,x02)
x
y<-cbind(y01,y02)
y
colnames(x)<-c("Name", "Swim")
colnames(y)<-c("Name", "Run")
a<-merge(x,y)
a
b<-merge(x,y, all = TRUE)
b
b1<-merge(x,y, by = "Name", all = TRUE)
b1
