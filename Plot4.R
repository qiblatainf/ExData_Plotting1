png(filename = 'C:\\Users\\qib\\Desktop\\R Programming\\Exploratory Data Analysis\\plot4.png', width = 480, height = 480, units='px')
par(mfrow = c(2,2))
x <- data$DateTime
plot(x, data$Global_active_power, xlab = '', ylab = 'Global Active Power (kilowatt)', type = 'l')
plot(x, data$Voltage, xlab = 'datetime', ylab = 'Voltage', type = 'l')

y1 <- data$Sub_metering_1
y2 <- data$Sub_metering_2
y3 <- data$Sub_metering_3
plot(x, y1, type = "l", xlab = " ",
     ylab = "Energy sub metering")
lines(data$DateTime, y2, col = "red")
lines(data$DateTime, y3, col = "blue")
legend('topright', col = c('black', 'red', 'blue'), 
       legend = c('Sub_metering_1', 'Sub_metering_2', 'Sub_metering_3'), lwd = 1)
plot(x, data$Global_reactive_power, xlab = ' ', ylab = 'Global_reactive_power', type = 'l')
dev.off()
