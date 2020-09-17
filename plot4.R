## Construct plot 4. Save it to a PNG file with a width of 480 pixels and a height of 480 pixels. Name the plot file "plot4.png".
png(filename = "plot4.png", width = 480, height = 480, units = "px")

par(mfrow = c(2,2), mar = c(4,4,2,1), oma = c(0,0,2,0))

with(power, {
  plot(Global_active_power ~ dateTime, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
  plot(Voltage ~ dateTime, type = "l", ylab = "Voltage (volt)", xlab = "")
  plot(Sub_metering_1 ~ dateTime, type = "l", ylab = "Global Active Power (kilowatts)", xlab = "")
  lines(Sub_metering_2 ~ dateTime, col = "red")
  lines(Sub_metering_3 ~ dateTime, col = "blue")
  legend("topright", col = c("black", "red", "blue"), lty = 1, lwd = 2, bty = "n", legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  plot(Global_reactive_power ~ dateTime, type = "l", ylab = "Global Rective Power (kilowatts)", xlab = "")
})

dev.off()
