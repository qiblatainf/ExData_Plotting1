setwd('C:\\Users\\qib\\Desktop\\R Programming\\Exploratory Data Analysis')
getwd()
fileURL <- ('https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip')
download.file(fileURL, destfile = 'C:\\Users\\qib\\Desktop\\R Programming\\Exploratory Data Analysis\\hpc.zip')
textfile <- ('C:\\Users\\qib\\Desktop\\R Programming\\Exploratory Data Analysis\\hpc\\household_power_consumption.txt')
data <- read.table(text = grep("^[1,2]/2/2007",readLines(textfile),value=TRUE), 
                   sep = ';', 
                   col.names = c("Date", "Time", "Global_active_power", "Global_reactive_power", "Voltage", "Global_intensity", "Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), na.strings = '?')
data


