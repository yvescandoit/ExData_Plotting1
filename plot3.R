#The first step is to read the data and subset it from 2007-02-01 to 2007-02-02.
data <- read.csv("household_power_consumption.txt",header = TRUE,na.strings = "?",sep = ";",dec = ".")

#then we subset the only required data  
dat1 <- data[data$Date %in% c("1/2/2007","2/2/2007"),]

#for the time series graph we need to convert the date and time variables to date/time class so we come up with a new col "datetime"
dat1$datetime <- as.POSIXct(paste(dat1$Date,dat1$Time),format="%d/%m/%Y %H:%M:%S")

#aslo converting the Global Active power coloumn into numeric class
dat1$Global_active_power <- as.numeric(dat1$Global_active_power)

#this plot contains alots of annotation as it contains 3 varaibles 
png("plot3.png", width=480, height=480)
Plot3.R <- plot(x=dat1$datetime,y=dat1$Sub_metering_1,xlab="",ylab="Energy Sub Metering",type="l",col="black")
              lines(x=dat1$datetime,y=dat1$Sub_metering_2,col="red")
              lines(x=dat1$datetime,y=dat1$Sub_metering_3,col="blue")
            legend("topright",col=c("black","red","blue"),c("Sub Metering 1","Sub Metering 2","Sub Metering 3"),lty=1)
dev.off()           
