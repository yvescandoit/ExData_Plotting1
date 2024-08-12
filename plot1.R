#The first step is to read the data and subset it from 2007-02-01 to 2007-02-02.
data <- read.csv("household_power_consumption.txt",header = TRUE,na.strings = "?",sep = ";",dec = ".")

#then we subset the only required data  
dat1 <- data[data$Date %in% c("1/2/2007","2/2/2007"),]

#Now we do the plotting part 
#Plot 1
png("plot1.png", width=480, height=480)
plot1.png <- hist(dat1$Global_active_power,main="Global Active Power",
                lab="Global Active Power(kilowatts)"
                ,col="red")
dev.off()
