# Project 1 - Plot 4
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

png(filename="plot4.png")

Sys.setlocale("LC_ALL","English")
x <- paste(d$Date, d$Time)
datetime <- strptime(x, "%d/%m/%Y %H:%M:%S")
attach(mtcars)
par(mfrow=c(2,2))
# 1,1
plot(datetime, d$Global_active_power, type="l", ylab="Global Active Power", xlab="")
# 1,2
plot(datetime, d$Voltage, type="l", ylab="Voltage", xlab=)
# 2,1
plot(datetime, d$Sub_metering_1, type="l", ylab="Energy sub metering", xlab="", col=1)
lines(datetime, d$Sub_metering_2, col=2)
lines(datetime, d$Sub_metering_3, col=4)
legend("topright", c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), col=c(1,2,4), lty=1, bty="n")
# 2,2
plot(datetime, d$Global_reactive_power, type="l", ylab="Global_reactive_power", xlab=)

dev.off()