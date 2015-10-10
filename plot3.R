plot3 <-function(){
  
  file1<-read.csv("household_power_consumption.txt",sep=";")
  subdataset1<-file1[file1$Date=='1/2/2007' | file1$Date=='2/2/2007',]
  dia <- strptime(paste(subdataset1$Date, subdataset1$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
  submet1 <- as.numeric(as.character(subdataset1$Sub_metering_1))
  submet2 <- as.numeric(as.character(subdataset1$Sub_metering_2))
  submet3 <- as.numeric(as.character(subdataset1$Sub_metering_3))
  
  png(filename = "plot3.png")
  plot(dia, submet1, type='l', ylab="Enery sub metering", xlab='')
  lines(dia, submet2, type='l', col='red')
  lines(dia, submet3, type='l', col='blue')
  legend('topright',c('Sub_metering_1','Sub_metering_2','Sub_metering_3'),lty=1, lwd=2, col=c('black','red','blue'))
  dev.off()  
}