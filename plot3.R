# Project 1 - Plot 3
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

png(filename="plot3.png")

Sys.setlocale("LC_ALL","English")
x <- paste(d$Date, d$Time)
days <- strptime(x, "%d/%m/%Y %H:%M:%S")
plot(days, d$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="", col=1)
lines(days, d$Sub_metering_2, col=2)
lines(days, d$Sub_metering_3, col=4)
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c(1,2,4), lty=1)

dev.off()