png(filename = 'C:\\Users\\qib\\Desktop\\R Programming\\Exploratory Data Analysis\\plot3.png', width = 480, height = 480, units='px')
data$Date <- as.Date(data$Date, format = '%d/%m/%Y')
data$DateTime <- as.POSIXct(paste(data$Date, data$Time))
x <- data$DateTime
y1 <- data$Sub_metering_1
y2 <- data$Sub_metering_2
y3 <- data$Sub_metering_3
plot(x, y1, type = "l", xlab = " ",
     ylab = "Energy sub metering")
lines(data$DateTime, y2, col = "red")
lines(data$DateTime, y3, col = "blue")
legend('topright', col = c('black', 'red', 'blue'), 
       legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lwd = 1)
dev.off()
