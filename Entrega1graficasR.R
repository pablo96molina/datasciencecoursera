#Grafico1
data <- subset(household_power_consumption,household_power_consumption$V1=="1/2/2007" | household_power_consumption$V1 =="2/2/2007")
names(data) <- c("dia","hora","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
Global_active_power <- as.numeric(data$Global_active_power)

hist(Global_active_power, col = "red")
date <- as.Date(data$dia, format = "%d/%m/%Y")

#Grafico2
time <- strptime(data$hora, format="%H:%M:%S")
dia <- format(date, "%a")
diakw <- data.frame(dia,time,Global_active_power)
diakw_ss <- subset(diakw, dia == "jue." | dia == "vie" | dia == "sáb" , select=c(dia,time, Global_active_power), na.rm=TRUE)
plot(diakw_ss$time,as.numeric(as.character(diakw_ss$Global_active_power)),type="l",xlab="" ,ylab="Global Active Power (kilowatts)") 

#Grafico3
plot(diakw$time, data$Sub_metering_1,type="n",xlab="",ylab="Energy sub metering")
with(data,lines(time,as.numeric(as.character(Sub_metering_1))))
with(data,lines(time,as.numeric(as.character(Sub_metering_2)),col="red"))
with(data,lines(time,as.numeric(as.character(Sub_metering_3)),col="blue"))
legend("topright", lty=1, col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

#Grafico4
par(mfrow = c(2, 2))

plot(diakw_ss$time,as.numeric(as.character(diakw_ss$Global_active_power)),type="l",xlab="" ,ylab="Global Active Power (kilowatts)") 
plot(diakw$time,as.numeric(as.character(data$Voltage)), type="l",xlab="datetime",ylab="Voltage")

plot(diakw$time, data$Sub_metering_1,type="n",xlab="",ylab="Energy sub metering")
with(data,lines(time,as.numeric(as.character(Sub_metering_1))))
with(data,lines(time,as.numeric(as.character(Sub_metering_2)),col="red"))
with(data,lines(time,as.numeric(as.character(Sub_metering_3)),col="blue"))
legend("topright", lty=1, col=c("black","red","blue"),legend=c("Sub_metering_1","Sub_metering_2","Sub_metering_3"))

plot(diakw$time,as.numeric(as.character(data$Global_reactive_power)),type="l",xlab="datetime",ylab="Global_reactive_power")


