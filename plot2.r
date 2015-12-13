##Exploratory data analysis assignment1

setwd("C:/Users/aman/Documents/Courses/Coursera/Data Science specialization/4- Exploratory Data Analysis/R Working directory- Exploratory data analysis/assignment1")

##Reading data file
file<- read.csv("household_power_consumption.txt", header = T, sep = ";", stringsAsFactors = F, na.strings = "?")

file1<- file[file$Date %in% c("1/2/2007","2/2/2007"),]

##converting date and time variables to date/time classes
datetime<- strptime(paste(file1$Date,file1$Time, sep = " "), "%d/%m/%Y %H:%M:%S")

globalActivePower <- as.numeric(as.character(file1$Global_active_power))

##PLOT2
png("plot2.png", width = 480, height = 480)
plot(datetime, globalActivePower, type = "l",xlab = "", ylab = "Global Active Power (Kilowatts)")
dev.off()

