# first open the png grahpic device
png(filename = "plot1.png",width = 480, height = 480)

# then create the Global_active_power histogram with reb color
with(dataTable, hist(Global_active_power,col = "red", xlab = "Global Active Power (kilowatts)",ylab = "Frequency"))

# annotate the title
title(main = "Global Active Power")

# close the png file device
dev.off()