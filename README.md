## Overview
Using the data from the <a href="http://archive.ics.uci.edu/ml/">UC Irvine Machine
Learning Repository</a>, which contains individual househouse electric power consumption data
from one household, for almost 4 years, I have constructed a 4 plots that examine how household
energy usage varies over a 2-day period in 2007.

## Raw Data Characteristics

The raw dataset has 2,075,259 rows and 9 columns.  It contains measurments of 
electric power consumption in one household near Paris, France from 
2006-12-16 17:24:00 to 2010-11-26 21:02:00.  '?' was used to denote a missing value. 

The following descriptions of the 9 variables in the dataset are taken
from
the <a href="https://archive.ics.uci.edu/ml/datasets/Individual+household+electric+power+consumption">UCI
web site</a>:

<ol>
<li><b>Date</b>: Date in format dd/mm/yyyy </li>
<li><b>Time</b>: time in format hh:mm:ss </li>
<li><b>Global_active_power</b>: household global minute-averaged active power (in kilowatt) </li>
<li><b>Global_reactive_power</b>: household global minute-averaged reactive power (in kilowatt) </li>
<li><b>Voltage</b>: minute-averaged voltage (in volt) </li>
<li><b>Global_intensity</b>: household global minute-averaged current intensity (in ampere) </li>
<li><b>Sub_metering_1</b>: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). </li>
<li><b>Sub_metering_2</b>: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. </li>
<li><b>Sub_metering_3</b>: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.</li>
</ol>

## Cleaned Data Characteristics

The cleaned data set eliminates any rows with missing values and covers only the period from:
2007-02-01 00:00:00 through 2007-02-02 23:59:00.  It contains 2880 observations.  

The columns are nearly identical to the raw dataset except the Date/Time columns have been combined.
<ol>
<li><b>DateTime</b>: Date/time in format dd/mm/yyyy hh:mm:ss</li>
<li><b>Global_active_power</b>: household global minute-averaged active power (in kilowatt) </li>
<li><b>Global_reactive_power</b>: household global minute-averaged reactive power (in kilowatt) </li>
<li><b>Voltage</b>: minute-averaged voltage (in volt) </li>
<li><b>Global_intensity</b>: household global minute-averaged current intensity (in ampere) </li>
<li><b>Sub_metering_1</b>: energy sub-metering No. 1 (in watt-hour of active energy). It corresponds to the kitchen, containing mainly a dishwasher, an oven and a microwave (hot plates are not electric but gas powered). </li>
<li><b>Sub_metering_2</b>: energy sub-metering No. 2 (in watt-hour of active energy). It corresponds to the laundry room, containing a washing-machine, a tumble-drier, a refrigerator and a light. </li>
<li><b>Sub_metering_3</b>: energy sub-metering No. 3 (in watt-hour of active energy). It corresponds to an electric water-heater and an air-conditioner.</li>
</ol>

## R Files
There is one R file for each plot.  

* plot1.R: For generating a histogram of the Global Active Power in kilowatts 
* plot2.R: For generating a line plot of Global Active Power over Date/Time 
* plot3.R: For generating a line plot of Submetering over Date/Time 
* plot4.R: For generating 4 line plots of Global Active Power, Energy sub metering, Voltage, and Global_reactive_power over time.

## Plots
These plots examine how household energy usage varies over a 2 day period
in February, 2007.  

* Plot 1: plot1.png - Contains a histogram of the Global Active Power in kilowatts
* Plot 2: plot2.png - Contains a line plot of the Global Active Power over Date/Time
* Plot 3: plot3.png - Contains a line plot of Submetering over Date/Time
* Plot 4: plot4.png - Contains 4 line plots of Global Active Power, Energy sub metering, Voltage, and Global_reactive_power over time.
