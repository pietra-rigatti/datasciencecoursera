## Construct plot 1. Save it to a PNG file with a width of 480 pixels and a height of 480 pixels. Name the plot file "plot1.png".
png(filename = "plot1.png", width = 480, height = 480, units = "px")

with(power, hist(Global_active_power, col = "red", main="Global Active Power", xlab = "Global Active Power (kilowatts)", ylab = "Frequency"))

dev.off()



