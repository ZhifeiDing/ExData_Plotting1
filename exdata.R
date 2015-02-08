# first download the data if not exist
if( ! file.exists("household_power_consumption.txt") ) {
    # first check if the compressed zip exist
    if( ! file.exists("household_power_consumption.zip") ) {
        download.file(url = "https://d396qusza40orc.cloudfront.net/exdata%2Fdata%2Fhousehold_power_consumption.zip", destfile = "household_power_consumption.zip",method = "curl")
    }
    # Then extract the downloaded zip file
    unzip("household_power_consumption.zip")
}

# Now load the data
# Because the analysis only need data from the dates 2007-02-01 to 2007-02-02
# So just read data between it to save time and memory
# First calculate how many rows should be skipped which equals the days before 2007-02-01
skippedRows <- 66637
lastRows <- 24 * 2 * 60
dataTable <- read.table("household_power_consumption.txt", sep = ";", skip = skippedRows, nrows = lastRows, na.strings = "?",header = T)
# Now name the variables
names(dataTable) <- c("Date","Time","Global_active_power","Global_reactive_power","Voltage","Global_intensity","Sub_metering_1","Sub_metering_2","Sub_metering_3")
# Convert date and time
dataTable$Date <- as.Date(dataTable$Date,format = "%d/%m/%Y")
dataTable$Time <- strptime(paste(dataTable$Date,dataTable$Time), format = "%Y-%m-%d %H:%M:%S")

# Now Plot the require plots by sourcing the correspoding files
source("plot1.R")
source("plot2.R")
source("plot3.R")
source("plot4.R")