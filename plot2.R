if(!exists("powerdata"))
{
  source("utilities.R")
  powerdata <- loadAndFilterData()
}

## Draw a connected line through two days of data showing the function of the Global Active Power over time
plot(powerdata$DateTime, powerdata$Global_active_power, type="n", xlab="", ylab="Global Active Power (kilowatts)")
lines(powerdata$DateTime, powerdata$Global_active_power)

##Save PNG
dev.copy(png, "plot2.png") ## saved at 480 x 480 pixels by default
dev.off()


