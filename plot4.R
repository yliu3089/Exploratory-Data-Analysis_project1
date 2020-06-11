#jpg 4
library(gridExtra)
Power[4] <- sapply(Power[4],as.numeric)
Power[5] <- sapply(Power[5],as.numeric)
Power_Global_2days<-Power[Power$Date==c("1/2/2007","2/2/2007"),]
par(mfcol=c(2,2))
plot1<-ggplot(Power_Global_2days, aes(x = Time, y =Global_active_power,group=1)) +
  geom_line(size=0.001) +
  geom_point(size=0.001)

plot2<-ggplot(Power_Global_2days, aes(x = Time, y =Voltage,group=1)) +
  geom_line(size=0.001) +
  geom_point(size=0.001)

plot3<-ggplot(df2, aes(x = x, y =value,color=variable,group=3)) +
  geom_line(size=0.001) +
  geom_point(size=0.001)

plot4<-ggplot(Power_Global_2days, aes(x = Time, y =Global_reactive_power,group=1)) +
  geom_line(size=0.001) +
  geom_point(size=0.001)

jpeg("plot4.png", width = 450, height = 450)
grid.arrange(plot1, plot2,plot3,plot4, nrow=2, ncol=2)
dev.off()
