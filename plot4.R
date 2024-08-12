#For This The Plotting is Done In A 4X4 Format 
png("plot4.png", width=480, height=480)
par(mfrow=c(2,2))

#Plot1
plot(x=dat1$datetime,y=dat1$Global_active_power,type="l",xlab="",ylab="Global Active Power")

#Plot2
plot(x=dat1$datetime,y=dat1$Voltage,xlab="Date Time",ylab="Voltage",type="l")           

#Plot3
plot(x=dat1$datetime,y=dat1$Sub_metering_1,xlab="",ylab="Energy Sub Metering",type="l",col="black")
lines(x=dat1$datetime,y=dat1$Sub_metering_2,col="red")
lines(x=dat1$datetime,y=dat1$Sub_metering_3,col="blue")
legend("topright",col=c("black","red","blue"),c("Sub Metering 1","Sub Metering 2","Sub Metering 3"),lty=1,cex = 0.8)

#Plot4
plot(x=dat1$datetime,y=dat1$Global_reactive_power,xlab="Date Time",ylab="Global reactive power",type="l")

dev.off()
