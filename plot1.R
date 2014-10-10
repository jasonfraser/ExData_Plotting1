#Here's the read in stuff I need for all files

dataall<-read.csv("household_power_consumption.txt", sep=";" ,dec=".", stringsAsFactors = FALSE, header=TRUE)
data1<-subset(dataall,Date=="1/2/2007")
data2<-subset(dataall,Date=="2/2/2007")
data<-rbind(data1,data2)

#Create my proper file
png(filename = "plot1.png",width = 480, height = 480)

#Let's grab just the data I need
Global_active_power<-as.numeric(data$Global_active_power)

hist(Global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)", xaxt="n")
axis(side=1, at=seq(0,6,by=2),labels=c("0","2","4","6"))
dev.off()

