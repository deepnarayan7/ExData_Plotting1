png("plot3.png",width=480, height =480)
plot(TimeIndex,as.numeric(Subdata$Sub_metering_1),lty=1,xlab="", ylab="Energy sub metering","l", col = "black")
lines(TimeIndex, Subdata$Sub_metering_2, col ="red")
lines(TimeIndex, Subdata$Sub_metering_3, col ="blue")
legend("topright", legend = c("Sub_metering_1","Sub_metering_2","Sub_metering_3"), lty=c(1,1,1), col=c("black","red","blue"))
dev.off()
