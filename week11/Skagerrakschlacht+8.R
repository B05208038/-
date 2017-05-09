rm(list=ls(all =TRUE)) 
for(x in 1:4){
  message("x=",x)
}
for(x in -2:4){
  message("x=",x)
}


for(x in seq(5,-3,-0.5)){
  message("x=",x)
}
#
#--------------------------------
rm(list=ls(all =TRUE)) 
#要先幫z做出一個空間
z<- NULL
for (y in -5:10){
  z[y]<-y^2
  message("z=",z)
}

#比較，是否可以從其他數字開始?
z<- NULL
print(y)
y<-1:10
for (i in 1:length(y)){
  z[i]<-y[i]^2
  message("z=",z[i])
}

#############
#while loop
y<-0 
while(y<=10){
  y<-y+1
  message(y)
}

#另一個例子
limit<-0.0001
y<-100
n<-1
dy<-100
y2<-NULL

while(dy>limit){
  y2<-y/2
  dy<-y-y2
  y<-y2
  #(加上計數器)
  n<-n+1
  print(dy)
}

#for有明確數字的範圍，但是while不一定需要
#while只要滿足括弧中的條件都會跑回圈
z<- c(1,2,4,3,5,6,7,8,9,10)
x<-c(1,3,5,9,7,11,13,15,17,19)
x%in%z
z!=x

#repeat-break-next
x<-0


#switch
switch(1,1+2,2+3,3+4,4+5)
switch(4,1+2,2+3,3+4,4+5)

x<-9
y<-switch(x,x+2,x+3,x+4,x+5)

#switch
score<-56
level<-floor(score/10)

#-----------------------------------
#example
x<-seq(-2,2,0.5)
if(x>0){
  y<- x^2+3
}else{
  y<- -x^2-3
}

#-----------------------------------
#example kai
x<-seq(-2,2,0.5)
for(i in c(1:length(x))){
    if(x[i]>0){
    y[i]<- x[i]^2+3
  }else{
   y[i]<- -x[i]^2-3
  }
}
x
y
#-------------------------------
x<-seq(-2,2,0.5)
y<- NULL
for(i in c(1:length(x))){
  ifelse(x[i]>0, y[i]<-x[i]^2+3,y[i]<- -x[i]^2-3)
}
y
#-------------------------
#which 寫法
x<-seq(-2,2,0.5)
y<-array(0,length(x))
y[which(x>0)]<- x[which(x>0)]^2+3
y[which(x<=0)]<- -x[which(x<=0)]^2-3
y