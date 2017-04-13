#created on Mar 28, 2017 by J_W YEH
#Second course practice
rm(list=ls(all=TRUE))
setwd("C:/Users/acer/NTU_freshman_Introduction_to_Computer_and_Programming_Geography_department")
df<-read.csv("https://ceiba.ntu.edu.tw/course/c81f41/content/cwb_466920_2006.csv",header = TRUE, sep = ",")
##############################################################
#first day data
Ta<-df[1:24,5]
hr<-df[1:24,3]
plot(hr, Ta)

#for a given julian day
JD = 302
#ts:time series
ts <- seq((JD-1)*24+1,(JD-1)*24+24)
Ta<-df[ts,5]
hr<-df[ts,3]
plot(hr, Ta)

#
Ta2<-df$T.air[ts]
hr2<-df$Hour[ts]
opdata <- cbind(hr2, Ta2)
write.table(opdata, file = "harmonie.csv", sep = ",",row.names = FALSE )