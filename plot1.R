#read data
powerdata<-read.csv(file='household_power_consumption.txt' ,sep=';',header=TRUE, stringsAsFactors = FALSE, na.strings= "?", strip.white=TRUE)

#convert date
powerdata$Date<-as.Date(powerdata$Date, format="%d/%m/%Y")

#take required data
powerdata<-subset(powerdata,subset = (powerdata$Date =='2007-02-01' | powerdata$Date =='2007-02-02'))

#plot to png
png("plot1.png", width = 480, height = 480)
hist(powerdata$Global_active_power ,col="red",xlab="Global Active Power(kilowatts)",ylab="Frequency",main="Global Active Power")
dev.off()

 