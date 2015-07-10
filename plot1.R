# Course project 1
tab <- read.table("household_power_consumption.txt",sep=";",header=TRUE,na.strings="?")
tab <- subset(tab,Date=='1/2/2007'|Date=='2/2/2007');

png(file="plot1.png",width=480,height=480)
hist( tab$Global_active_power, col='red',main='Global Active Power',xlab="Global Active Power (kilowatts)" )
dev.off()
