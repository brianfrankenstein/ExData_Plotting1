library(dplyr)

if(!exists("powerdata"))
{
  source("utilities.R")
  powerdata <- loadAndFilterData()
}

# show histagram showing the frequency of values of Global Active Power
hist(powerdata$Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", xlim=c(0,6))

##Save PNG
dev.copy(png, "plot1.png") ## saved at 480 x 480 pixels by default

dev.off()