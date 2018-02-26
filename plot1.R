power_data <- read.csv(file = "household_power_consumption.txt", sep = ";", dec = ".", header = T)
power_data$Date <- as.Date(power_data$Date, format = "%d/%m/%Y")
power_data_plot <- power_data[(power_data$Date == "2007-02-01") | (power_data$Date == "2007-02-02"),]
power_data_plot$Global_active_power <- as.numeric(as.character(power_data_plot$Global_active_power))
png("plot1.png", width = 480, height = 480)
hist(power_data_plot$Global_active_power, col = "red", xlab = "Global Active Power (kilowatts)", main = "Global Active Power")
dev.off()