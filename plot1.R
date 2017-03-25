hist(as.numeric(Subdata$Global_active_power),xlab = "Global active power (kilowatts)",main = "Global active power", col = "red")
dev.copy(png, file = "plot1.png", width=480, height=480)
dev.off()
