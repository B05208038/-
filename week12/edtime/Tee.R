#作業
#05092017 葉叡文
rm(list = ls(all = TRUE))
setwd("C:/Users/acer/NTU_freshman_Introduction_to_Computer_and_Programming_Geography_department/week12/edtime")
#(1)
#install.packages("data.table")
library(data.table)
Yushan<- fread("Yushan20150210.csv", header = TRUE, sep = ",")


WCI<-function(Ta, V){
  WWCI<- 13.12+0.6215*(Ta) - 11.37*(V*3600/1000)^(0.16)+0.3965*(Ta)*(V*3600/1000)^0.16
    return(WWCI)
}
SPr<-function(Pr){
  #海拔高度3844
  Sprr<-Pr/exp(-3844/8200)
  return(Sprr)
}
layout(matrix(c(1,3,2,4), 2,2))
plot(Yushan$`觀測時間(時)`, Yushan$`溫度(°C)`,
     type = "o",
     xlab = "Time",
     ylab = "Temperature", 
     main = "Temperature",
     pch = c(15),
     cex = 1.5 , 
     col = c(3))
plot(Yushan$`觀測時間(時)`, WCI(Yushan$`溫度(°C)`, Yushan$`風速(m/s)`),
     type = "b",
     xlab = "Time",
     ylab = "Temperature", 
     main = "Wind chill",
     pch = c(15),
     cex = 1.5 , 
     col = c(2))

plot(Yushan$`觀測時間(時)`, SPr(Yushan$`測站氣壓(hPa)`),
     type = "b",
     xlab = "Time",
     ylab = "atmosphere", 
     main = "hPa",
     pch = c(15),
     cex = 1.5 , 
     col = c(1))
dev.copy(jpeg," figureoutput.jpg")
dev.off()
Timea<-Yushan$`觀測時間(時)`
Windchill<-WCI(Yushan$`溫度(°C)`, Yushan$`風速(m/s)`*3600/1000)
Pressure<-SPr(Yushan$`測站氣壓(hPa)`)
#匯出csv
output<-cbind(Timea,Windchill,Pressure )
write.table(output, "windchill.csv", row.names = FALSE, sep = ",")