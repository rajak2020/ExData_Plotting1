## File plot1.R to plot line drawing in png format for 2 days data in feb 2007


    source("loadData.R")

    png(filename = "plot2.png"
       ,width = 480, height = 480
       ,units = "px", bg = "white")

    plot(DateTime, Global_active_power
        ,type = "l"             ## line type
        ,xlab = ""
        ,ylab = "Global Active Power (kilowatts)")


    dev.off()  ## close the file

    ## ideally detach() to be called for newData loaded in loadData.R
