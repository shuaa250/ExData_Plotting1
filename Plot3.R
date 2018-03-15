# Plot 3
attach(data)
plot(Sub_metering_1 ~ datatime, type = "l", ylab = "Energy sub metering", xlab = "")
lines(Sub_metering_2 ~ datatime, col = "Red")
lines(Sub_metering_3 ~ datatime, col = "Blue")
legend("topright", lty = 1, col = c("black", "red", "blue"), 
       legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.copy(png, file = "plot3.png", height = 480, width = 480)
dev.off()
detach(data)
