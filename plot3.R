## Construct plot 3. Save it to a PNG file with a width of 480 pixels and a height of 480 pixels. Name the plot file "plot3.png".
png(filename = "plot3.png", width = 480, height = 480, units = "px")

with(power, {
  plot(Sub_metering_1 ~ dateTime, type = "l", ylab="Global Active Power (kilowatts)", xlab="")
  lines(Sub_metering_2~dateTime, col = "Red")
  lines(Sub_metering_3~dateTime, col = "Blue")
})

legend("topright", col = c("black", "red", "blue"), lwd = c(1,1,1), c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))

dev.off()


