#Read the data from the file
completeData<- read.csv("household_power_consumption.txt", header=T, sep=';', na.strings="?", check.names=F, stringsAsFactors=F, comment.char="", quote='\"')

#Convert the dates as Date format
completeData$Date <- as.Date(completeData$Date, format="%d/%m/%Y")

#Subsetting the data
data <- subset(completeData, subset=(Date >= "2007-02-01" & Date <= "2007-02-02"))
# Creating the histogram
hist(data$Global_active_power, main="Global Active Power", xlab="Global Active Power (kilowatts)", ylab="Frequency", col="Red")
#writing to PNG device
dev.copy(png,file ="plot1.png",height = 480,width = 480)
dev.off()
