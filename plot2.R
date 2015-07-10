# Course project 1
tab <- read.table("household_power_consumption.txt",sep=";",header=TRUE,na.strings="?")
tab <- subset(tab,Date=='1/2/2007'|Date=='2/2/2007');

# Plot2
png(file="plot2.png",width=480,height=480)
plot(1:2880,tab$Global_active_power,type='l',xlab='',ylab="Global Active Power (kilowatts)", xaxt='n')
axis(1,c(1,1441,2881),c('Thu','Fri','Sat'))
dev.off()
