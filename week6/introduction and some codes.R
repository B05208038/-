#this is my first script 
#created on Mar 28, 2017 by J_W YEH
'to have a great habit and stop the forhead data burnun your time up'
#press control(CTRL)+L to clear console
rm(list=ls(all=TRUE))

'use arrow instead of equal mark'
a<-3
b<-2
c<-200

#is reference, it's not use in code

#character 字串
d<- "NTU Geaography"

#numeric vs integer
a1<- 3
a2<- as.integer(3)
class(a1)
class(a2)
#--------------------------------------
class(3.1415926)
pi
class(pi)

#complex 複數
f<- 2+2i

#logical : TRUE or FALSE
g<-TRUE
h<-FALSE
#有些單字有特定意義，注意字的顏色!
#大小寫注意!!

#vector 向量
#c(1,3,5,7)
k1 <- c(1,3,5,7,9,11,13)
class(k1)
#在向量當中，需要是同一種元素才可
k2<- c(a,b,c)
class(k2)
k3 <- c(a1, a2, a)

#ex:character vector
m <- c("NTU","GEOG", "2016")
class(m)
m1 <- c(g,h)
m2 <- c(a,g,h)
class(m1)
class(m2)

#找出第4個元素
#用心觀察
n1 <- k1[4]
n2 <- k1[4:6]

#vector
p1 <- c(1,2,3,4,9,7,8,5,7,3,6,3,6,7,3,7,8)
p2 <- p1[12]
#冒號:a至b
#中括弧:位置
p3 <- p1[8:12]
#挑不規則，特定位置點的數字
p4 <- p1[c(1,3,4,6,7,8,10,12)]

#number in order
q1 <- 1:100
q2 <- c(101:150)
q3 <- seq(1,20,3)
#seq(起始, 終點, 距離(增量曾至最接近的數，但小於之))
q4 <- seq(1, 5, 0.2)

#figure 
x <- seq(0,5,0.1)
y <- cos(x)
#plot:繪製圖表
plot (x,y)
plot (x,y, type = "l")
plot (x,y, type = "p")
plot (x,y, type = "b")
plot (x,y, 
      type = "b", 
      xlab = "HOUR", ylab = "T air", 
      main = "hour versus temperature",
      col = "yellow")
