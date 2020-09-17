## Construct plot 2. Save it to a PNG file with a width of 480 pixels and a height of 480 pixels. Name the plot file "plot2.png".
png(filename = "plot2.png", width = 480, height = 480, units = "px")

with(power, plot(Global_active_power ~ dateTime, type="l", ylab="Global Active Power (kilowatts)", xlab=""))

dev.off()

