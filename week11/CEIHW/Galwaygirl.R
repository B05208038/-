rm(list = ls(all = TRUE))
setwd("C:/Users/acer/NTU_freshman_Introduction_to_Computer_and_Programming_Geography_department/week11/CEIHW")
Irish<-read.table("Gutin2009.csv", header = TRUE, sep = ",")
monthlyyearpm10<-NULL
monthlyyearpm2.5<-NULL
avgdata<-NULL
for(ip3 in c(1:365)){
  avgdata<-seq((ip3-1)*24+1,(ip3-1)*24+24)
  ip3.Ta<-Irish$PM10[avgdata]
  monthlyyearpm10[ip3]<-mean(ip3.Ta)
}
for(ip4 in c(1:365)){
  avgdata<-seq((ip4-1)*24+1,(ip4-1)*24+24)
  ip4.Ta<-Irish$PM2.5[avgdata]
  monthlyyearpm2.5[ip4]<-mean(ip4.Ta)
}
#----------------------------------
monthlyyearpm2.5[which(is.na(monthlyyearpm2.5))]<-0
monthlyyearpm10[which(is.na(monthlyyearpm10))]<-0
#---------------------------------
day<-c(1:365)
prettyirish<-cbind(monthlyyearpm2.5, monthlyyearpm10)
matplot(day, prettyirish,
        type = "b",
        main = "365 days PM 2.5 & PM 10",
        xlab = "day",
        ylab = "density",
        ylim = c(1,365),
        cex = 1.5 , 
        pch = c(15,16),
        col = c(5,6))
legend(-10,250,c("Density of PM 2.5","Density of PM 10"),
       pch = c(15,16),
       col = c(5,6),
       cex = 0.8,
       bty = "n")
dev.copy(jpeg," 古亭站的空氣監測指數.jpg")
dev.off()

testify<-NULL
for(lol in 1:365){
  if(monthlyyearpm2.5[lol]<=36){
    testify[lol]<-"Low"
  }else if(36<monthlyyearpm2.5[lol]& monthlyyearpm2.5[lol]<=54){
    testify[lol]<-"Medium"
  }else if(54<monthlyyearpm2.5[lol]&monthlyyearpm2.5[lol]<=71){
    testify[lol]<-"High"
  }else {
      testify[lol]<-"Serious"
  }
}
Den.pm2.5<-testify
classification<-cbind(day,Den.pm2.5)
print(classification)
write.table(classification,"classification.csv",row.names = FALSE, sep = ",")
