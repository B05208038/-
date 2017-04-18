#B05208038 Jui-Wen Yeh
#midterm question 1
rm(list=ls(all=TRUE))

#1(1)
setwd("D:/B05208038")
hornor<-read.table("Gutin2009.csv",header = TRUE,sep = ",")

#1(2)
JDRR <- 281
#第281天到第285天共120筆資料
Julip<- seq((JDRR-1)*24+1,(JDRR-1)*24+120 )
Ta <- hornor[Julip,4]
PM10<-hornor[Julip, 5]
PM25<-hornor[Julip, 6]

#1(3)
Rpm <- PM25/PM10

#1(4)
plot(c(1:120), Rpm,
     type = "b",
     xlab = "Time", 
     ylab = "Rpm", 
     main = "PM2.5以及PM10之比值",
     xlim = c(1, 120), 
     ylim = c(0, 1.2),
     cex = 1.1, 
     pch = 16,
     col = "red")
#匯出混合資料:
TimE <- c(1:120)
resultt <- cbind(TimE, Ta, PM10, PM25, Rpm)
write.table(resultt,file="GutinPM.csv", row.names = FALSE, sep = ",")

#######################################################################
#midterm question 2
#2(1)
#輸入資料
rm(list=ls(all=TRUE))
Sdn <- c(0,0,0,0,0,20,80,200,340,480,670,880,900,750,550,450,300,120,0,0,0,0,0,0)
Ta <- c(23,22,21,19,18,20,22,25,28,31,35,37,38,35,31,28,27,26,25,25,24,24,23,23)
Ts<- c(18,17,16,16,15,17,22,26,30,35,39,42,40,38,35,34,30,27,26,23,20,19,18,18)
#計算
#算Ta以及Ts之絕對溫度
TaK <- Ta+273
TsK <- Ts+273
#Supw之資料(利用返照率)
Sup<- Sdn*0.1
#長波輻射
Ldn <- 0.9*(5.67E-8)*(TaK)^4
Lup <- 0.9*(5.67E-8)*(TsK)^4
#計算Rn
Rn <- Sdn-Sup+Ldn-Lup
#2(2)
Hr<- seq(1,24,1)
#2(3)
plot(Hr, Rn,
     type = "b",
     xlab = "時間(小時)", 
     ylab = "地表淨輻射量", 
     main = "地表淨輻射量與時間關係",
     xlim = c(0, 24),
     ylim = c(-10, 850),
     cex = 1.1, 
     pch = 10,
     col = "blue")
#2(4)
Rn0<-Rn[which(Rn<0)]
Hr0<-Hr[which(Rn<0)]
ArraryRn0<-cbind(Hr0, Rn0)
write.table(ArraryRn0,file="ArraryRn0.csv", sep = ",", row.names = FALSE)