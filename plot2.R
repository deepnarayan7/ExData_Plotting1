plot(TimeIndex,as.numeric(Subdata$Global_active_power),lty=1,xlab="", ylab="Global active power (kilowatts)","l")
dev.copy(png, "plot2.png",width=480, height =480)
dev.off()
