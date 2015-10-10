plot2 <-function(){
  
  file1<-read.csv("household_power_consumption.txt",sep=";")
  subdataset1<-file1[file1$Date=='1/2/2007' | file1$Date=='2/2/2007',]
  t<-as.numeric(as.character(subdataset1$Global_active_power))
  dia <- strptime(paste(subdataset1$Date, subdataset1$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
  png(filename = "plot2.png")
  plot(dia, t, type='l', ylab="Global Active Power (kilowatts)", xlab='')
  dev.off()  
}