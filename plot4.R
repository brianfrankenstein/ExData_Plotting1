if(!exists("powerdata"))
{
  source("utilities.R")
  powerdata <- loadAndFilterData()
}

## Show 4 line graphs in one image
par(mfrow=c(2,2))

plot(powerdata$DateTime, powerdata$Global_active_power, type="n", xlab="", ylab="Global Active Power")
lines(powerdata$DateTime, powerdata$Global_active_power, col="black")

plot(powerdata$DateTime, powerdata$Voltage, type="n", xlab="DateTime", ylab="Voltage")
lines(powerdata$DateTime, powerdata$Voltage, col="black")

plot(powerdata$DateTime, powerdata$Sub_metering_1, type="n", xlab="", ylab="Energy sub metering")
lines(powerdata$DateTime, powerdata$Sub_metering_1, col="black")
lines(powerdata$DateTime, powerdata$Sub_metering_2, col="red")
lines(powerdata$DateTime, powerdata$Sub_metering_3, col="blue")
legend("topright",legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lwd=2 )

plot(powerdata$DateTime, powerdata$Global_reactive_power, type="n", xlab="", ylab="Global Active Power")
lines(powerdata$DateTime, powerdata$Global_reactive_power, col="black")

##Save PNG
dev.copy(png, "plot4.png") ## saved at 480 x 480 pixels by default
dev.off()
