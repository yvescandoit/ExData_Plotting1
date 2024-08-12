#The first step is to read the data and subset it from 2007-02-01 to 2007-02-02.
data <- read.csv("household_power_consumption.txt",header = TRUE,na.strings = "?",sep = ";",dec = ".")

#then we subset the only required data  
dat1 <- data[data$Date %in% c("1/2/2007","2/2/2007"),]



#for the time series graph we need to convert the date and time variables to date/time classso we come up with a new col "datetime"
dat1$datetime <- as.POSIXct(paste(dat1$Date,dat1$Time),format="%d/%m/%Y %H:%M:%S")

#We also convert the Global Active power coloumn into numeric class
dat1$Global_active_power <- as.numeric(dat1$Global_active_power)

#now the plotting
png("plot.png", width=480, height=480)
Plot2.R <- plot(x=dat1$datetime,y=dat1$Global_active_power,
                xlab="",ylab="Global Activity Power(Kilowatts",
                type="l")
dev.off()

