if(!exists("powerdata"))
{
  source("utilities.R")
  powerdata <- loadAndFilterData()
}

## Draw connected lines for the three Submetering values over 2 days with a unique color for each 
## and a legend indicating which color describes which submetering
plot(powerdata$DateTime, powerdata$Sub_metering_1, type="n", xlab="", ylab="Energy sub metering")
lines(powerdata$DateTime, powerdata$Sub_metering_1, col="black")
lines(powerdata$DateTime, powerdata$Sub_metering_2, col="red")
lines(powerdata$DateTime, powerdata$Sub_metering_3, col="blue")
legend("topright",legend=c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), col=c("black", "red", "blue"), lwd=2 )

##Save PNG
dev.copy(png, "plot3.png") ## saved at 480 x 480 pixels by default
dev.off()