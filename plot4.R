png("plot4.png", height = 480, width = 480)
par(mfrow= c(2,2))
par(mar= c(4,4,2,2))
plot(TimeIndex, as.numeric(Subdata$Global_active_power),
     xlab = "", ylab = "Global Active Power",
     "l")
plot(TimeIndex, as.numeric(Subdata$Voltage),
     xlab = "datetime", ylab = "Voltage",
     "l")

plot(TimeIndex,as.numeric(Subdata$Sub_metering_1),lty=1,xlab="", ylab="Energy sub metering","l", col = "black")
lines(TimeIndex, Subdata$Sub_metering_2, col ="red")
lines(TimeIndex, Subdata$Sub_metering_3, col ="blue")
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=c(1,1,1), col=c("black","red","blue"), box.lwd = 0)

plot(TimeIndex, as.numeric(Subdata$Global_reactive_power),
     xlab = "datetime", ylab = "Global_reactive_power",
     "l")

dev.off()