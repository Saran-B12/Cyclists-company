## Setting up my environment:
##Notes: Setting up my environment by loading 'tidyverse' and 'lubridate' packages.

# loading necessary packages

library(tidyverse)
library(lubridate)


# Uploading the datasets:

feb <- read.csv("C:\\Users\\saran\\OneDrive\\Documents\\Data_analysts_Case_study\\Cyclistic_company\\202302-divvy-tripdata.csv")
mar <- read.csv("C:\\Users\\saran\\OneDrive\\Documents\\Data_analysts_Case_study\\Cyclistic_company\\202303-divvy-tripdata.csv")
apr <- read.csv("C:\\Users\\saran\\OneDrive\\Documents\\Data_analysts_Case_study\\Cyclistic_company\\202304-divvy-tripdata.csv")
may <- read.csv("C:\\Users\\saran\\OneDrive\\Documents\\Data_analysts_Case_study\\Cyclistic_company\\202305-divvy-tripdata.csv")
jun <- read.csv("C:\\Users\\saran\\OneDrive\\Documents\\Data_analysts_Case_study\\Cyclistic_company\\202306-divvy-tripdata.csv")
jul <- read.csv("C:\\Users\\saran\\OneDrive\\Documents\\Data_analysts_Case_study\\Cyclistic_company\\202307-divvy-tripdata.csv")


# Checking whether all the column names in the different tables are same before combining into one:

colnames(feb)
colnames(mar)
colnames(apr)
colnames(may)
colnames(jun)
colnames(jul)

# Checking the structure and datatype:

str(feb)
str(mar)
str(apr)
str(may)
str(jun)
str(jul)


# Combining 6 month of data into a single data:

ride <- rbind(feb,mar,apr,may,jun,jul)


# Inspecting the new table:

colnames(ride) #checking the column names
nrow(ride) # checking how many rows are there
dim(ride) # checking the dimensions
str(ride) # Checking the columns datatypes
summary(ride) # Statistical summary of the data
head(ride) # checking first 6 data
tail(ride) # checking last 6 data


# Inserting NA to the blank cells:
ride[ride == ""] <- NA

# Calculating the number of NA values in each columns:
colSums(is.na(ride))

# Omiting the NA values in the dataset:
ride_v2 <- na.omit(ride)


# Checking whether there is still null values in the dataset:
colSums(is.na(ride_v2))


# Calculating the number of duplicated values:
sum(duplicated(ride$ride_id))


# Calculating the number of unique values:
length(unique(ride$ride_id))


# Converting datatype of  started_at and ended_at to date time format:

ride_v2$started_at <- lubridate::as_datetime(ride_v2$started_at)
ride_v2$ended_at <- lubridate::as_datetime(ride_v2$ended_at)


# Checking whether th datatype is changed:
class(ride_v2$started_at)
class(ride_v2$ended_at)


# Creating a new column for hour:
ride_v2$start_hr <- lubridate :: hour(ride_v2$started_at)
ride_v2$end_hr <- lubridate :: hour(ride_v2$ended_at)


# Creating a new column for just date:
ride_v2$start_date <- lubridate :: date(ride_v2$started_at)
ride_v2$end_date <- lubridate :: date(ride_v2$ended_at)


# Calculating the difference in time for ride length:
ride_v2$ride_length <- difftime(ride_v2$ended_at,ride_v2$started_at)
ride_v2$ride_length <- as.numeric(ride_v2$ride_length)


# Calculating the difference in time for ride length in hours:
ride_v2$ride_length_hr <- difftime(ride_v2$ended_at,ride_v2$started_at,units = c("hours"))
ride_v2$ride_length_hr <- as.numeric(ride_v2$ride_length_hr)


# Converting the dateyear format to weekday:
ride_v2$start_day <- wday(ride_v2$start_date,label = TRUE)
ride_v2$end_day <- wday(ride_v2$start_date,label = TRUE)


# Checking the datatype and structure:
str(ride_v2)


# Excluding the stationname 'Hq Qr' and ridelength less than or equal to 1:
ride_v3 <- ride_v2[!(ride_v2$start_station_name == "HQ QR"|ride_v2$ride_length <=1),]


# Checking the dimension of the newly created dataset:
dim(ride_v3)


# Conforming there is no null values in the newly created dataset:
colSums(is.na(ride_v3))


# Taking a summary of the dataset:
summary(ride_v3)


# Exporting the end result as CSV file to work on Visualization in Tableau:
write.csv(ride_v3,"cyclist_bike_company.csv",row.names = FALSE)