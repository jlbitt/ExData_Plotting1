# Project 1 - Plot 2
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

png(filename="plot2.png")

Sys.setlocale("LC_ALL","English")
x <- paste(d$Date, d$Time)
days <- strptime(x, "%d/%m/%Y %H:%M:%S")
plot(days, d$Global_active_power, type="l", ylab="Global Active Power (kilowatts)", xlab="")

dev.off()