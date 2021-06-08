#Grafico 4

par(mfrow = c(2, 2))

plot(diakw_ss$time,as.numeric(as.character(diakw_ss$Global_active_power)),type="l",xlab="" ,ylab="Global Active Power (kilowatts)") 
plot(diakw$time,as.numeric(as.character(data$Voltage)), type="l",xlab="datetime",ylab="Voltage")

plot(diakw$time, data$Sub_metering_1,type="n",xlab="",ylab="Energy sub metering")
with(data,lines(time,as.numeric(as.character(Sub_metering_1))))
with(data,lines(time,as.numeric(as.character(Sub_metering_2)),col="red"))
with(data,lines(time,as.numeric(as.character(Sub_metering_3)),col="blue"))
legend("topright", lty=1, col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

plot(diakw$time,as.numeric(as.character(data$Global_reactive_power)),type="l",xlab="datetime",ylab="Global_reactive_power")


