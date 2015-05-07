## Source code to load data set and take subset for two days required data only

    filename <- "./data/household_power_consumption.txt"
    data <- read.table(filename
                      ,header = TRUE
                      ,sep = ";"
                      ,colClasses = c("character", "character", rep("numeric",7))
                      ,na = "?")

    ## Need two days of data Feb 1st and 2nd 2007
    newData <- data[data$Date == "1/2/2007" | data$Date == "2/2/2007", ]

    x <- paste(newData$Date, newData$Time)  ## concatenate date and time together

    ## Convert str to ptime (POSIX formatted time).
    ## Please note 10th column DateTime will be added to data set.
    ## You can verify by colnames(newData) call.
    newData$DateTime <- strptime(x, "%d/%m/%Y %H:%M:%S")

    ## rename row numbers for subset data 1 through 2880
    ## otherwise row labels retained from original data file
    rownames(newData) <- 1:nrow(newData) 

    attach(newData) ## subsequent function calls can directly use variables in this data frame/table.

