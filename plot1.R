# Exploratory
# Course project 1

tab <- read.table("household_power_consumption.txt",sep=";",header=TRUE,na.strings="?")

day1 <- tab$Date=='1/2/2007';
day2 <- tab$Date=='2/2/2007';
days <- day1 | day2;
summary(days);
tab  <- tab[days,];


hist( tab$Global_active_power, col='red',main='Global Active Power',xlab="Global Active Power (kilowatts)" )


#dev.copy(png,file="plot1.png")

png(file="plot1.png",width=480,height=480)
hist( tab$Global_active_power, col='red',main='Global Active Power',xlab="Global Active Power (kilowatts)" )
dev.off()


# Plot2
png(file="plot2.png",width=480,height=480)
plot(1:2880,tab$Global_active_power,type='l',xlab='',ylab="Global Active Power (kilowatts)", xaxt='n')
axis(1,c(1,1440,2880),c('Thu','Fri','Sat'))
dev.off()


# Plot3

png(file="plot3.png",width=480,height=480)
plot(1:2880,tab$Sub_metering_1,type='l',xlab='',ylab="Energy Sub metering", xaxt='n')
par(new=TRUE)
plot(1:2880,tab$Sub_metering_2,col='red',type='l', xaxt='n', ann=FALSE,ylim=c(0,38))
par(new=TRUE)
plot(1:2880,tab$Sub_metering_3,col='blue',type='l', xaxt='n', ann=FALSE,ylim=c(0,38))
axis(1,c(1,1440,2880),c('Thu','Fri','Sat'))
legend("topright",lty=1,col=c('black','red','blue'),legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3') )
dev.off()

#########################################################
# plot 4

par(mfrow=c(2,2))
##fig1
plot(1:2880,tab$Global_active_power,type='l',xlab='',ylab="Global Active Power (kilowatts)", xaxt='n')
axis(1,c(1,1440,2880),c('Thu','Fri','Sat'))

##fig3
plot(1:2880,tab$Voltage,type='l',xlab='datetime',ylab="Voltage", xaxt='n')
axis(1,c(1,1440,2880),c('Thu','Fri','Sat'))


##fig2
plot(1:2880,tab$Sub_metering_1,type='l',xlab='',ylab="Energy Sub metering", xaxt='n')
par(new=TRUE)
plot(1:2880,tab$Sub_metering_2,col='red',type='l', xaxt='n', ann=FALSE,ylim=c(0,38))
par(new=TRUE)
plot(1:2880,tab$Sub_metering_3,col='blue',type='l', xaxt='n', ann=FALSE,ylim=c(0,38))
axis(1,c(1,1440,2880),c('Thu','Fri','Sat'))
legend("topright",lty=1,col=c('black','red','blue'),legend=c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),bty="n" )

##fig4
plot(1:2880,tab$Global_reactive_power,type='l',xlab='datetime',ylab="Global_reactive_power", xaxt='n')
axis(1,c(1,1440,2880),c('Thu','Fri','Sat'))




