png(filename = 'C:\\Users\\qib\\Desktop\\R Programming\\Exploratory Data Analysis\\plot2.png', width = 480, height = 480, units='px')
data$Date <- as.Date(data$Date, format = '%d/%m/%Y')
data$DateTime <- as.POSIXct(paste(data$Date, data$Time))
plot(data$DateTime, data$Global_active_power, type = "l", xlab = " ",
     ylab = "Global Active Power (kilowatts)")
dev.off()
