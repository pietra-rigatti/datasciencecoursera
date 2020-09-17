## First calculate a rough estimate of how much memory the dataset will require in memory before reading into R.
round(2075259*9*8/2^{20}, 2)

## Set working directory.
setwd("~/R/datasciencecoursera")

## Read the data and remove NAs. 
power <- read.table("household_power_consumption.txt", header = TRUE, sep = ";", na.strings = "?", colClasses = c("character","character","numeric","numeric","numeric","numeric","numeric","numeric","numeric"))

## Convert Date variable into Date-time class. 
power$Date <- as.Date(power$Date, "%d/%m/%Y")

## Read date just from 2007-02-01 and 2007-02-02.
power <- subset(power, Date >= as.Date("2007-2-1") & Date <= as.Date("2007-2-2"))

## Remove NAs.
power <- power[complete.cases(power),]

## Merge Date and Time columns.
dateTime <- paste(power$Date, power$Time)
dateTime <- setNames(dateTime, "DateTime")

## Remove previous Date and Time columns.
power <- power[ ,!(names(power) %in% c("Date","Time"))]

## Add the new DateTime column.
power <- cbind(dateTime, power)

## Format the new dateTime column as date-time class.
power$dateTime <- as.POSIXct(dateTime)
