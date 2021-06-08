#Grafico2
time <- strptime(data$hora, format="%H:%M:%S")
dia <- format(date, "%a")
diakw <- data.frame(dia,time,Global_active_power)
diakw_ss <- subset(diakw, dia == "jue." | dia == "vie" | dia == "sáb" , select=c(dia,time, Global_active_power), na.rm=TRUE)
plot(diakw_ss$time,as.numeric(as.character(diakw_ss$Global_active_power)),type="l",xlab="" ,ylab="Global Active Power (kilowatts)") 
