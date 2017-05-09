#1
Encoding("UTF-8")
rm(list = ls(all = TRUE))
setwd("C:/Users/acer/NTU_freshman_Introduction_to_Computer_and_Programming_Geography_department/week11/BACHW")
LWD<-read.table("test1.csv", header = TRUE, sep = ",")
Station<- LWD[2]
NO<-LWD[1]
Rain<-LWD[3]
RainDF<-data.frame(NO, Station, Rain)

#2
warnne<-NULL
for(i in 1:28){
  if(RainDF$雨量[i] < 150){
    warnne[i]<-"E"
  }else if(150<=RainDF$雨量[i] & RainDF$雨量[i]<300){
    warnne[i]<-"D"
  }else if(300<=RainDF$雨量[i] & RainDF$雨量[i]<450){
    warnne[i]<-"C"
  }else if(450<=RainDF$雨量[i] & RainDF$雨量[i]<600){
    warnne[i]<-"B"
  }else{
    warnne[i]<-"A" }
}
print(warnne)
finala<-cbind(Station, warnne)
write.table(finala, file= "final.csv",sep = ",")

#3
switcher<-NULL
kilo<-NULL
lonelyman<-floor(RainDF$雨量/150)
level<-as.integer(lonelyman)
level[which(level>4)]<-4
for(i in 1:28){
switcher[i]<-switch(level[i]+1,"E","D","C","B","A")
}

