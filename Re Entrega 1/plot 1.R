#Grafico1
data <- subset(household_power_consumption,household_power_consumption$V1=="1/2/2007" | household_power_consumption$V1 =="2/2/2007")
names(data) <- c("dia","hora","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
Global_active_power <- as.numeric(data$Global_active_power)

hist(Global_active_power, col = "red")
date <- as.Date(data$dia, format = "%d/%m/%Y")