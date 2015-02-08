# first open the png grahpic device
png(filename = "plot2.png",width = 480, height = 480)

# then plot the Global_active_power ~ Date with line

with(dataTable, plot( Time, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power (kilowatts)"))

# close the png file device
dev.off()