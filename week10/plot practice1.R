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

#-----------------------------------------------------------------------------------
dev.copy(jpeg,"plot01.jpeg")
dev.off()

#matplot:合併圖表
T<-cbind(Ta,Td,Ta*1.05,Td/1.10)
matplot(Kilo$Hour[JDR], T
        ,type="b", 
        #pch: plotting ‘character’
        pch = c(15,16,2,22),
        col = c(6,7,8,9))

#legend:想把東西方在哪個位置
legend(2,35,c("T air", "Dew point","T air*1.5", "Dew point/1.1"),
       pch = c(15,16,2,22),
       col = c(6,7,8,9),
       bty = "o")

#combine plots
par(mfrow=c(2,2))
plot(Kilo$Hour[JDR],Ta)
plot(Kilo$Hour[JDR],Td)
plot(Kilo$Hour[JDR],Kilo$RH[JDR])

#layout:不規則
layout(matrix(c(1,2,1,3),2,2))
plot(Kilo$Hour[JDR],Ta)
plot(Kilo$Hour[JDR],Td)
plot(Kilo$Hour[JDR],Kilo$RH[JDR])