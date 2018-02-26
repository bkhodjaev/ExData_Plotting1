power_data <- read.csv(file = "household_power_consumption.txt", stringsAsFactors=FALSE, sep = ";", dec = ".", header = T)
power_data$Date <- as.Date(power_data$Date, format = "%d/%m/%Y")
power_data_plot <- power_data[(power_data$Date == "2007-02-01") | (power_data$Date == "2007-02-02"),]
DateTime <- as.POSIXct(paste(power_data_plot$Date, power_data_plot$Time, sep=" "))
power_data_plot$Global_active_power <- as.numeric(as.character(power_data_plot$Global_active_power))
png("plot2.png", width = 480, height = 480)
plot(DateTime, power_data_plot$Global_active_power, type="l", xlab= "", ylab = "Global Active Power (kilowatts)") 
dev.off()