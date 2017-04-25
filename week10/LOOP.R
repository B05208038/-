#after doomsday practice
#geo fresh
rm(list=ls(all = TRUE))
#for loop
z<-NULL
for(y in c(1:10)) {
  z[y]<-log(y+20^2+3*exp(1/y))
}
plot(1:10, z)
#-------------------------------
for(y in c(1:10)) {
  z<z+1
}
#y 在此變成計數器
#-------------------------------
