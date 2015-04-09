## This file is for loading the large dataset. 

filename <- "./data/household_power_consumption.txt" 
data <- read.table(filename, 
                   header = TRUE, 
                   sep = ";", 
                   colClasses = c("character", "character", rep("numeric",7)), 
                   na = "?") 
dim(data) 
# 2075259 9 
attach(data) 
#The following objects are masked from newData (pos = 3):

    #Date, Global_active_power, Global_intensity,
    #Global_reactive_power, Sub_metering_1, Sub_metering_2,
    #Sub_metering_3, Time, Voltage

#The following objects are masked from newData (pos = 4):

    #Date, Global_active_power, Global_intensity,
    #Global_reactive_power, Sub_metering_1, Sub_metering_2,
    #Sub_metering_3, Time, Voltage

#The following objects are masked from data (pos = 5):

    #Date, Global_active_power, Global_intensity,
    #Global_reactive_power, Sub_metering_1, Sub_metering_2,
    #Sub_metering_3, Time, Voltage

## We only need data of 2 days. 
subset <- Date == "1/2/2007" | Date == "2/2/2007" 
newData <- data[subset, ] 
attach(newData) 
#The following objects are masked from data (pos = 3):

    #Date, Global_active_power, Global_intensity,
    #Global_reactive_power, Sub_metering_1, Sub_metering_2,
    #Sub_metering_3, Time, Voltage

#The following objects are masked from newData (pos = 4):

    #Date, Global_active_power, Global_intensity,
    #Global_reactive_power, Sub_metering_1, Sub_metering_2,
    #Sub_metering_3, Time, Voltage

#The following objects are masked from newData (pos = 5):

    #Date, Global_active_power, Global_intensity,
    #Global_reactive_power, Sub_metering_1, Sub_metering_2,
    #Sub_metering_3, Time, Voltage

#The following objects are masked from data (pos = 6):

    #Date, Global_active_power, Global_intensity,
    #Global_reactive_power, Sub_metering_1, Sub_metering_2,
    #Sub_metering_3, Time, Voltage

x <- paste(Date, Time) 
newData$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S") 
rownames(newData) <- 1:nrow(newData) 
dim(newData) 
# 2880   10 
attach(newData)
#The following objects are masked from newData (pos = 3):

    #Date, Global_active_power, Global_intensity,
    #Global_reactive_power, Sub_metering_1, Sub_metering_2,
    #Sub_metering_3, Time, Voltage

#The following objects are masked from data (pos = 4):

    #Date, Global_active_power, Global_intensity,
    #Global_reactive_power, Sub_metering_1, Sub_metering_2,
    #Sub_metering_3, Time, Voltage

#The following objects are masked from newData (pos = 5):

    #Date, DateTime, Global_active_power, Global_intensity,
    #Global_reactive_power, Sub_metering_1, Sub_metering_2,
    #Sub_metering_3, Time, Voltage

#The following objects are masked from newData (pos = 6):

    #Date, Global_active_power, Global_intensity,
    #Global_reactive_power, Sub_metering_1, Sub_metering_2,
    #Sub_metering_3, Time, Voltage

#The following objects are masked from data (pos = 7):

    #Date, Global_active_power, Global_intensity,
    #Global_reactive_power, Sub_metering_1, Sub_metering_2,
    #Sub_metering_3, Time, Voltage

