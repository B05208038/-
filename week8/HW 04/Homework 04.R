#created on 04132017 Dientag by J_W Yeh
#Homework 04
rm(list=ls(all=TRUE))
setwd("C:/Users/acer/NTU_freshman_Introduction_to_Computer_and_Programming_Geography_department/week8/HW 04/HW4")
#Question 1
#(1)##########################################
drama <- read.table("test1.csv", header = TRUE, sep = ",")
StName <- drama[1:28, 2]
Precip <- drama[1:28, 3]
#(2)##########################################
StA <- StName[which(Precip<150)]
print(StA)
#(3)##########################################
StB <- StName[which(Precip>=150&Precip<500)]
print(StB)
#(4)##########################################
StC<- StName[which(Precip<150|Precip>500)]
print(StC)
#(5)##########################################
StID <- seq(1, 28, 1)
rbindresult<-rbind(StID, Precip)
cbindresult<-cbind(StID, Precip)

###########################################
###########################################
#Question2
#(1)##########################################
setwd("C:/Users/acer/NTU_freshman_Introduction_to_Computer_and_Programming_Geography_department/week8/HW 04/HW4")
Kilo<- read.table("cwb_466920_2006.csv", header = TRUE, sep = ",")
#(2)##########################################
JD <-223
JDR<-seq((JD-1)*24+1, (JD-1)*24+24)
Ta <- Kilo[JDR, 5]
Td <- Kilo[JDR, 6]
#(3)##########################################
H<- (Ta-Td)/(-2/1000-(-10/1000))
#(4)##########################################
plot(Kilo$Hour[JDR], H, 
     type = "b",
     xlab = "Time (Hour)",
     ylab = "Height (Meter)", 
     main = "the LCL on day 223",
     xlim =c(0,24),
     ylim = c(0, 1300),
     cex = 1.5 , 
     pch = 16,
     col = "red")
#(5)#########################################
LCLCSV<- cbind(Kilo$Hour[JDR],H, Ta, Td)
write.table(LCLCSV, file = "LCL.csv", sep = ",", row.names = FALSE)