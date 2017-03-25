url <- "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip"
download.file(url, destfile = "test.zip")
unzip("test.zip", list=T)
unzip("test.zip")
file.rename("household_power_consumption.txt", "PC.txt")
data <- read.csv("PC.txt", sep=";", stringsAsFactors = F)
Subdata <- data[data$Date %in% c("1/2/2007","2/2/2007"),]
table(Subdata[,-(1:2)]=="?")
remove(data)
TimeIndex <- strptime(paste(Subdata$Date,Subdata$Time," "), "%d/%m/%Y %H:%M:%S")
