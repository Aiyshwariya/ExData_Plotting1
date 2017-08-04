#reading the data
path <- "C:/Users/User/Desktop/Data Science/Course 4/week 1/household_power_consumption/household_power_consumption.txt"
data <- read.table(path, header=TRUE, sep=";", stringsAsFactors=FALSE, dec=".")
#subsetting the data
subs_data <- data[data$Date %in% c("1/2/2007","2/2/2007") ,]
#getting the plot
datetime <- strptime(paste(subs_data$Date, subs_data$Time, sep=" "), "%d/%m/%Y %H:%M:%S") 
global_active_power <- as.numeric(subs_data$Global_active_power)
png("plot2.png", width=480, height=480)
plot(datetime, global_active_power, type="l", xlab="", ylab="Global Active Power (kilowatts)")
dev.off()