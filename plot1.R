#********************************************
#*     Exploratory Data Analysis:  Week 1   *
#*      Peer Graded Assignment: Graph 1     *
#*    Histogram - Global Active Power       *
#*       Gregory Surplus    03/01/2019      *
#********************************************

#Load the dplyr library
library(dplyr)

# Read in the data
# -- Recognize the header
# -- Set the separator to ;
# -- Convert ? to NA
# -- Make sure strings don't become factors
epc_prelim<-read.csv(file="data/household_power_consumption.txt", header=TRUE, sep=";", na.strings=c("?"), stringsAsFactors = FALSE)

#------------Clean up---------------
# -- Make a DateTime column of type POSIXct
# -- Remove any record with NAs
# -- Keep only records on 2007-02-01 or 2007-02-02
# -- Put the DateTime column first and drop the individual Date and Time fields
# -- 60 records an hour, 24 hours a day.  1440 obs per day expected.  Two days - 2880 obs expected.  2880 obs in set.
epc_data<-mutate(epc_prelim, DateTime = as.POSIXct(paste (epc_prelim$Date,epc_prelim$Time),format="%d/%m/%Y %H:%M:%S", tz="etc/GMT-1")) %>%
  filter(complete.cases(.) & between(DateTime,as.POSIXct("2007-02-01 00:00:00", tz="etc/GMT-1"),as.POSIXct("2007-02-02 23:59:59", tz="etc/GMT-1"))) %>%
  select(DateTime,Global_active_power:Sub_metering_3)

#----------Histogram:  Global Active Power --------------
png (filename = "plot1.png", width=480, height = 480, units = "px")
hist (epc_data$Global_active_power, main = "Global Active Power", xlab="Global Active Power (kilowatts)", col="red")
dev.off()


