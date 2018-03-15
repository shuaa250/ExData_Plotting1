# Plot 4
data$datatime <- as.POSIXct(data$datatime)
par(mfrow = c(2, 2))
attach(data)
plot(Global_active_power ~ datatime, type = "l", ylab = "Global Active Power", 
     xlab = "")
plot(Voltage ~ datatime, type = "l")
plot(Sub_metering_1 ~ datatime, type = "l", ylab = "Energy sub metering", 
     xlab = "")
lines(Sub_metering_2 ~ datatime, col = "Red")
lines(Sub_metering_3 ~ datatime, col = "Blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"),
       bty = "n")
plot(Global_reactive_power ~ datatime, type = "l")
# Saving Plot 4
dev.copy(png, file = "plot4.png", height = 480, width = 480)
dev.off()
detach(data)
