# first open the png grahpic device
png(filename = "plot3.png",width = 480, height = 480)

# then plot the sub_metering_* with time line

with(dataTable, {
    plot(Time,Sub_metering_1, type = "l", xlab = "", ylab = "Energy sub metering")
    lines( Time, Sub_metering_2, col = "red")
    lines( Time, Sub_metering_3, col = "blue")
})
# add lengend
legend("topright", pch = "-----",col = c("grey","red","blue"), legend = c("Sub_metering_1", "Sub_metering_2","Sub_metering_3"))

# close the png file device
dev.off()