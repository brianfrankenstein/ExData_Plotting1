loadAndFilterData <- function()
{
  fileName <- "exdata-data-household_power_consumption/household_power_consumption.txt"
  
  startDate <- as.POSIXct("2007/02/01") 
  endDate <- as.POSIXct("2007/02/02 23:59:59")
  
  powerdata <- read.table(fileName, sep=";", header=TRUE, na.strings = "?") %>%
    mutate(DateTime=as.POSIXct(paste(Date, Time), format="%d/%m/%Y %H:%M:%S")) %>%
    filter(DateTime >= startDate, DateTime <= endDate, !is.na(Global_active_power))
}

generateAssignmentDiagrams <- function()
{
  par(mfrow=c(1,1))
  
  source("plot1.R")
  source("plot2.R")
  source("plot3.R")
  source("plot4.R")
}