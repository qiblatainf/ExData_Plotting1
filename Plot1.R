png(filename = 'C:\\Users\\qib\\Desktop\\R Programming\\Exploratory Data Analysis\\plot1.png', width = 480, height = 480, units='px')
histogram <- hist(data$Global_active_power, xlab = "Global Active Power (kilowatts)", col = "red", main = "Global Active Power")
with(data, histogram)
dev.off()
