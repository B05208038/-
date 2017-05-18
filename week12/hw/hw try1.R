#for and create function homework 
rm(list = ls(all = TRUE))
#1
sigmaa<- NULL
echo<- NULL
lol<- seq(-5, 4, 0.01)
for (x in 1:901){
  print(lol[x])
  if (lol[x]<(-3)){
    echo[x] <- 1-lol[x]
  }else if ((-3)<=lol[x] & lol[x]<=1){
     echo[x] <- (lol[x]+1)^2
  }else if (1<lol[x] & lol[x]<2){
    echo[x] <- 2*(lol[x])^2+lol[x]+1
  }else {
    echo[x] <- 0
  }
  print(echo[x])
  sigmaa[x]<-echo[x]
}
plot(1:901, sigmaa,
     type = "l",
     xlab = "enter numbering for seq(5,4,0.01)",
     ylab = "printout", 
     main = "calculator",
     pch = c(15),
     cex = 1.5 , 
     col = c(2))


#2
rm(list = ls(all = TRUE))
#install.packages("data.table")
library(data.table)
Hour<- seq(1:24)
Pressure<- c(768.5, 768.6, 768.6, 768.5, 768.2, 768.2, 769, 769, 769.5, 769.5, 769.1, 767.9, 767.8, 767.3, 766.3, 768.1, 767.3, 767.3, 767.2, 767.7, 767.8, 767.8, 767.9, 767.1)
Tair<- c(12.5, 12.3, 11.8, 11.9, 11.8, 12.5, 12.6, 14.1, 16.8, 17.3, 16.8, 17, 14.7,13.8, 13.4, 13.3, 13.5, 12.7, 12.1, 13, 12, 11.4, 11.7, 11.5)
RH<- c(84, 80, 78, 73, 78, 78, 75, 76, 61, 67, 70, 77, 91, 93, 95, 97, 95, 94, 95, 95, 92, 89, 89, 83)
pltto<-cbind(Hour, Pressure,  Tair, RH)

#建立函數
#實際水氣壓
avp<- function(x){
  0.611*e^(17.5*x/(240.97+x))
}
#露點溫度
AH<- function(a,b){
  a*b/100
}
DPT<- function(a){
  (240.97*log(a/0.611))/(17.50-log(a/0.611))
}


acta<- AH(Pressure/10, RH)
lala<- cbind(Tair,DPT(acta))

par(mfrow=c(2,1), no.readonly = FALSE)
matplot(Hour, lala,
        type = "b",
        xlab = "time",
        ylab = "temperature", 
        main = "temperature",
        pch = c(15,16),
        cex = 1.5 , 
        col = c(2, 4))
legend("left"
       ,c("Temperature","Dew Point temperature"),
       pch = c(15,16),
       col = c(2,4),
       bty = "n")

matplot(Hour, acta,
        type = "b",
        xlab = "time",
        ylab = "actual pressure(kPa)", 
        main = "actual pressure and time",
        pch = c(17),
        cex = 1.5 , 
        col = c(2))
legend("topleft",
       c("actual pressure(kPa)"),
       pch = c(17),
       col = c(2),
       bty = "n")
dev.copy(jpeg," figure02.jpg")
dev.off()
