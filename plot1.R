plot1 <-function(){
  
  file1<-read.csv("household_power_consumption.txt",sep=";")
  subdataset1<-file1[file1$Date=='1/2/2007' | file1$Date=='2/2/2007',]
  t<-as.numeric(as.character(subdataset1$Global_active_power))
  png(filename = "plot1.png")
  hist(t, col='red', main='Global Active Power', xlab="Global Active Power (kilowatts)")
  dev.off()  
  
}