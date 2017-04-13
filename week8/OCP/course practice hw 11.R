#created on Mar 28, 2017 by J_W YEH
#Second course practice
rm(list=ls(all=TRUE))
setwd("C:/Users/acer/NTU_freshman_Introduction_to_Computer_and_Programming_Geography_department/week8")
dff <-read.table("cwb_2006_0101.csv",header = TRUE, sep = ",")
##############################################################
dff
#先處理資料問題
RH <- dff [1:24, 7]
Tair <- dff [1:24, 5]
Td <- dff [1:24, 6]
Hr <- dff [1:24, 3]
plot(Hr, RH)
Td[which(Td<0)]<-NaN
RH[which(RH<0|RH>100)]<-NaN
output<- cbind(Hr, Tair, Td, RH)
write.table(output, file = "output.csv", sep = ",",row.names = FALSE)