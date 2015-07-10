# Course project 1
tab <- read.table("household_power_consumption.txt",sep=";",header=TRUE,na.strings="?")
tab <- subset(tab,Date=='1/2/2007'|Date=='2/2/2007');

# Plot3

png(file="plot3.png",width=480,height=480)
plot(1:2880,tab$Sub_metering_1,type='l',xlab='',ylab="Energy Sub metering", xaxt='n')
par(new=TRUE)
plot(1:2880,tab$Sub_metering_2,col='red',type='l', xaxt='n', ann=FALSE,ylim=c(0,38))
par(new=TRUE)
plot(1:2880,tab$Sub_metering_3,col='blue',type='l', xaxt='n', ann=FALSE,ylim=c(0,38))
axis(1,c(1,1441,2881),c('Thu','Fri','Sat'))
legend("topright",lty=1,col=c('black','red','blue'),legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3') )
dev.off()
