## File plot1.R to plot histogram in png format for 2 days data in feb 2007

    source("loadData.R")

    png(filename = "plot1.png"
       ,width = 480, height = 480
       ,units = "px", bg = "white")

    hist(Global_active_power
        ,col = "red", 
        ,main = "Global Active Power" 
        ,xlab = "Global Active Power (kilowatts)"
        ,breaks = 12, ylim = c(0, 1200))

    dev.off()  ## close the file

    ## ideally detach() to be called for newData loaded in loadData.R
