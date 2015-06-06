# Project 1 - Plot 1
# @jlbitt

# Read data
d = read.table("household_power_consumption.txt", 
               sep=";", 
               col.names=c("Date",
                           "Time",
                           "Global_active_power",
                           "Global_reactive_power",
                           "Voltage",
                           "Global_intensity",
                           "Sub_metering_1",
                           "Sub_metering_2",
                           "Sub_metering_3"), 
               skip=66637,
               nrows=2880)

# Plot

png(filename="plot1.png")

hist(d$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")

dev.off()