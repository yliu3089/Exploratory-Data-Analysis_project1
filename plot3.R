#question 3
library(reshape2)
Power[7] <- sapply(Power[7],as.numeric)
Power[8] <- sapply(Power[8],as.numeric)
Power[9] <- sapply(Power[9],as.numeric)
Power_Global_2days<-Power[Power$Date==c("1/2/2007","2/2/2007"),]
df <- data.frame(x =Power_Global_2days$Time, y1 =Power_Global_2days$Sub_metering_1, 
                 y2 = Power_Global_2days$Sub_metering_2,y3=Power_Global_2days$Sub_metering_3)
df2 <- melt(df, id = "x")
df2
jpeg("plot3.png", width = 450, height = 450)
ggplot(df2, aes(x = x, y =value,color=variable,group=3)) +
  geom_line(size=0.001) +
  geom_point(size=0.001)
dev.off()