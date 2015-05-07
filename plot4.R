## File plot4.R to plot four charts in png format for 2 days data in feb 2007.
## Charts printed in 2 x 2 row/column format.

    source("loadData.R")

    png(filename = "plot4.png"
       ,width = 480, height = 480
       ,units = "px", bg = "white")

    par(mfrow = c(2, 2))

    ## Following plots go across 1st row first and finally across 2nd row.
    ## Printed left to right.

    plot(DateTime, Global_active_power
        ,type = "l"             ## line type
        ,xlab = ""
        ,ylab = "Global Active Power")


    plot(DateTime, Voltage
        ,type = "l"             ## line type
        ,xlab = "datetime"
        ,ylab = "Voltage")

    ## begin of plot 3  #####
    plot(DateTime, Sub_metering_1, type = "l"
        ,col = "black", xlab = "", ylab = "Energy sub metering")

    lines(DateTime, Sub_metering_2, col = "red")

    lines(DateTime, Sub_metering_3, col = "blue")

    legend("topright", bty = "n"     ## explicitly suppress border for legend !!!
          , col = c("black", "red", "blue"),
          , c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3")
          , lwd = 1)
    ## end of plot 3 ######
    

    ## no need to label Y axis, the desired value is already the column name
    plot(DateTime, Global_reactive_power, type="l", xlab="datetime") ## line color defaults to black

     
    dev.off()   ## close the file

    ## ideally detach() to be called for newData loaded in loadData.R
