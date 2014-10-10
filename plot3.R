#Here's the read in stuff I need for all files

dataall<-read.csv("household_power_consumption.txt", sep=";" ,dec=".", stringsAsFactors = FALSE, header=TRUE)
data1<-subset(dataall,Date=="1/2/2007")
data2<-subset(dataall,Date=="2/2/2007")
data<-rbind(data1,data2)

#Create my proper file
png(filename = "plot3.png",width = 480, height = 480)

#Let's grab just the data I need
Sub_metering_1<-as.numeric(data$Sub_metering_1)
Sub_metering_2<-as.numeric(data$Sub_metering_2)
Sub_metering_3<-as.numeric(data$Sub_metering_3)

plot(Sub_metering_1, type = "n", xlab = "", ylab = "Energy sub metering", xaxt ="n")
axis(side = 1, at = c(0,1450,2900), labels = c("Thu", "Fri", "Sat"))
points(Sub_metering_1, type = "l", col = "black")
points(Sub_metering_2, type = "l", col = "red")
points(Sub_metering_3, type = "l", col = "blue")
legend("topright", legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"), lty=c(1, 1, 1), lwd=c(2.5, 2.5, 2.5), col = c("black", "red", "blue"))

 


dev.off()