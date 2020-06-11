#jpg 1
Power<-read.csv("household_power_consumption.txt",sep=";")
Power_Global_activer<-as.numeric(Power$Global_active_power)
Power[3] <- sapply(Power[3],as.numeric)
Power_Global_2days<-Power[Power$Date==c("1/2/2007","2/2/2007"),]
jpeg("plot1.png", width = 450, height = 450)
hist(Power_Global_2days$Global_active_power,xlab="Global Active Power(kilowatts)",
     main="Global Active Power",col="red")
dev.off()