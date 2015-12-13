##Exploratory data analysis assignment1

setwd("C:/Users/aman/Documents/Courses/Coursera/Data Science specialization/4- Exploratory Data Analysis/R Working directory- Exploratory data analysis/assignment1")

##Reading data file
file<- read.csv("household_power_consumption.txt", header = T, sep = ";", stringsAsFactors = F, na.strings = "?")

file1<- file[file$Date %in% c("1/2/2007","2/2/2007"),]

##converting date and time variables to date/time classes
datetime<- strptime(paste(file1$Date,file1$Time, sep = " "), "%d/%m/%Y %H:%M:%S")

globalActivePower <- as.numeric(file1$Global_active_power)
globalReactivePower <- as.numeric(file1$Global_reactive_power)
voltage<- as.numeric(file1$Voltage)
s1<- as.numeric(file1$Sub_metering_1)
s2<- as.numeric(file1$Sub_metering_2)
s3<- as.numeric(file1$Sub_metering_3)

##plot4
png("plot4.png", width = 480, height = 480)

##setting the no of graphs parameter
par(mfrow = c(2,2))

#plot1
plot(datetime, globalActivePower, type = "l",xlab = "", ylab = "Global Active Power (Kilowatts)")

#plot2
plot(datetime, voltage, type = "l", xlab = "datetime", ylab = "Voltage")

#plot3
plot(datetime, s1, type = "l", ylab = "Energy Submetering", xlab = "")
lines(datetime, s2, col = "red")
lines(datetime, s3, col = "blue")
legend("topright", c("Sub_Metering_1","Sub_Metering_2","Sub_Metering_3"), lty=, lwd = 2.5, col = c("black", "red", "blue"), bty = "n")

#plot4
plot(datetime, globalReactivePower,type = "l", xlab = "datetime", ylab = "Global_reactive_power")

dev.off()