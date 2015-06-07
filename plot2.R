
setwd("/Users/katrina.seelin/Documents")


##Read data
CPdataFile <- "/Users/katrina.seelin/Documents/household_power_consumption.txt"
CPdata <- read.table(CPdataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

##Subset data
subSetData <- CPdata[CPdata$Date %in% c("1/2/2007","2/2/2007") ,]
datetime <- strptime(paste(subSetData$Date, subSetData$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
globalActivePower <- as.numeric(subSetData$Global_active_power)

##Plot Data
png("plot2.png", width=480, height=480)
plot(datetime, globalActivePower, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()

