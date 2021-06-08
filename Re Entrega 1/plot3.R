#Grafico3
plot(diakw$time, data$Sub_metering_1,type="n",xlab="",ylab="Energy sub metering")
with(data,lines(time,as.numeric(as.character(Sub_metering_1))))
with(data,lines(time,as.numeric(as.character(Sub_metering_2)),col="red"))
with(data,lines(time,as.numeric(as.character(Sub_metering_3)),col="blue"))
legend("topright", lty=1, col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))
