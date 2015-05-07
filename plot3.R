## File plot3.R to plot line drawing in png format for 2 days data in feb 2007

    source("loadData.R")

    png(filename = "plot3.png" 
       ,width = 480, height = 480
       ,units = "px", bg = "white")

    plot(DateTime, Sub_metering_1, type = "l"
        ,col = "black", xlab = "", ylab = "Energy sub metering")

    lines(DateTime, Sub_metering_2, col = "red")

    lines(DateTime, Sub_metering_3, col = "blue")

    legend("topright", col = c("black", "red", "blue"),
          , c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
          , lwd = 1)
      
    dev.off()

    ## ideally detach() to be called for newData loaded in loadData.R
