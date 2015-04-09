##Set working directory, load "Load data.R".

    setwd("C:")

  source("./data/Load data.R")
  library(datasets)

##Make PNG file in working directory
  png(filename = "plot1.png", 
      width = 480, height = 480,
      units = "px", bg="transparent")
##make histogram in PNG file 
  with(newData,hist(newData$Global_active_power,
        col = "red",
        main = "Global Active Power",
        xlab = "Global Active Power (kilowatts)",
        breaks = 12, ylim = c(0, 1200)))
##print it out
  dev.off()
  
