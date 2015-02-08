# first open the png grahpic device
png(filename = "plot4.png",width = 480, height = 480)

# then plot the sub_metering_* with time line
# set nrows and ncols
par( mfrow = c(2,2) )

with(dataTable, {
    plot( Time, Global_active_power, type = "l", xlab = "", ylab = "Global Active Power")
    plot( Time, Voltage, type = "l", xlab = "datatime", ylab = "Voltage")
    plot(Time,Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
    lines( Time, Sub_metering_2, col = "red")
    lines( Time, Sub_metering_3, col = "blue")
    # add lengend
    legend("topright",bty = "n", border = par("bg"),pch = "----",col = c("black","red","blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))
    
    plot( Time, Global_reactive_power, type = "l", xlab = "datetime", ylab = "Global_reactive_power")
})

# close the png file device
dev.off()