#reading the data
path <- "C:/Users/User/Desktop/Data Science/Course 4/week 1/household_power_consumption/household_power_consumption.txt"
data <- read.table(path, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
#subsetting the data
subs_data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
#getting the plot
global_active_power <- as.numeric(subs_data$Global_active_power)
png("plot1.png", width=480, height=480)
hist(global_active_power, col="red", main="Global Active Power", xlab="Global Active Power (kilowatts)")
dev.off()