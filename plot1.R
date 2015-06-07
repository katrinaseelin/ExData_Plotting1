getwd()
setwd("/Users/katrina.seelin/Documents")

##Read data
CPdataFile <- "/Users/katrina.seelin/Documents/household_power_consumption.txt"
CPdata <- read.table(CPdataFile, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")

##Subset data
subSetData <- CPdata[CPdata$Date %in% c("1/2/2007","2/2/2007") ,]
globalActivePower <- as.numeric(subSetData$Global_active_power)

##Plot data
png("plot1.png", width=480, height=480)
hist(globalActivePower, col="red", main="Global Active Power",xlab="Global Active Power (kilowatts)")
dev.off()
