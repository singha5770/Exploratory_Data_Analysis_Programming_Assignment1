##Exploratory data analysis assignment1

setwd("C:/Users/aman/Documents/Courses/Coursera/Data Science specialization/4- Exploratory Data Analysis/R Working directory- Exploratory data analysis/assignment1")

##Reading data file
file<- read.csv("household_power_consumption.txt", header = T, sep = ";", stringsAsFactors = F, na.strings = "?")

file1<- file[file$Date %in% c("1/2/2007","2/2/2007"),]

##converting date and time variables to date/time classes
globalActivePower <- as.numeric(as.character(file1$Global_active_power))


##PLOT1
png("plot1.png", width = 480, height = 480)
hist(globalActivePower, xlab = "Global Active Power (Kilowatts)", main = "Global Active Power", col = "red")
dev.off()
