#this is my first script 
#created on Mar 28, 2017 by J_W YEH
'to have a great habit and stop the forhead data burnun your time up'
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
n1 <- k1[4]

