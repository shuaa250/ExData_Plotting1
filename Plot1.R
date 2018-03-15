# Plot 1
dataFile <- "./data/household_power_consumption.txt"
data <- read.table("household_power_consumption.txt", header = T, sep = ";", na.strings = "?")
data$Date <- as.Date(data$Date, format = "%d/%m/%Y")
data <- subset(data, subset = (Date >= "2007-02-01" & Date <= "2007-02-02"))                  
subSetData <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
data$datetime <- strptime(paste(data$Date, data$Time), "%Y-%m-%d %H:%M:%S")
attach(data)
hist(Global_active_power, main = "Global Active Power", xlab = "Global Active Power", col = "Red")

# Saving the file
dev.copy(png, file = "plot1.png", height = 480, width = 480)
dev.off()
