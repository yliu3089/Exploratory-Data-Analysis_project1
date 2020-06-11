#jpg 2
library(lubridate)
Power[10]<-weekdays(as.POSIXct(Power$Date,format="%d/%m/%Y"), abbreviate = F)
names(Power)[names(Power)=="V10"]<-"weekdays"
Power[3] <- sapply(Power[3],as.numeric)
Power_Global_2days<-Power[Power$Date==c("1/2/2007","2/2/2007"),]
datetime <- strptime(paste(Power_Global_2days$Date, Power_Global_2days$Time, sep=" "), "%d/%m/%Y %H:%M:%S")
library(ggplot2)
library(dplyr)
jpeg("plot2.png", width = 450, height = 450)
qplot(Time,Global_active_power,data=Power_Global_2days,group=1)+
  geom_line(size=0.001)+geom_point(size=0.001)
dev.off()