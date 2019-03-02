#********************************************
#*     Exploratory Data Analysis:  Week 1   *
#*      Peer Graded Assignment: Graph 3     *
#*                Line plot:                *
#*       Submetering over Date/Time         *
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

#----------Line Plot: Submetering over Date/Time --------------
png (filename = "plot3.png", width=480, height = 480, units = "px")
with(epc_data, plot (DateTime, Sub_metering_1, xlab="", ylab="Energy sub metering", type="l"))
  with(epc_data, lines(DateTime, Sub_metering_2, col="red"))
  with(epc_data, lines(DateTime, Sub_metering_3, col="blue"))
  legend("topright", lty=1, col=c("black","red", "blue"), legend = c("Sub_metering_1", "Sub_metering_2", "Sub_metering_3"))
  dev.off()


