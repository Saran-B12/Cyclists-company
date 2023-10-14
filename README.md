# Cyclists-company
Coverting Casual members to Annual members using marketing strategies

## ***Case Study: Converting Casual Cyclistic Riders to Annual Members***

***Scenario:***

You are a junior data analyst working in the marketing analyst team at Cyclistic, a bike-share company in Chicago. The director of marketing believes the company’s future success depends on maximizing the number of annual memberships. Therefore, your team wants to understand how casual riders and annual members use Cyclistic bikes differently. From these insights, your team will design a new marketing strategy to convert casual riders into annual members. But first, Cyclistic executives must approve your recommendations, so they must be backed up with compelling data insights and professional data visualizations.


***About the company:***

In 2016, Cyclistic launched a successful bike-share offering. Since then, the program has grown to a fleet of 5,824 bicycles that are geotracked and locked into a network of 692 stations across Chicago. The bikes can be unlocked from one station and returned to any other station in the system anytime.
Until now, Cyclistic’s marketing strategy relied on building general awareness and appealing to broad consumer segments. One 2 approach that helped make these things possible was the flexibility of its pricing plans: single-ride passes, full-day passes, and annual memberships. Customers who purchase single-ride or full-day passes are referred to as casual riders. Customers who purchase annual memberships are Cyclistic members.
Cyclistic’s finance analysts have concluded that annual members are much more profitable than casual riders. Although the pricing flexibility helps Cyclistic attract more customers, Moreno believes that maximizing the number of annual members will be key to future growth. Rather than creating a marketing campaign that targets all-new customers, Moreno believes there is a very good chance to convert casual riders into members. She notes that casual riders are already aware of the Cyclistic program and have chosen Cyclistic for their mobility needs. 
Moreno has set a clear goal: Design marketing strategies aimed at converting casual riders into annual members. In order to do that, however, the marketing analyst team needs to better understand how annual members and casual riders differ, why casual riders would buy a membership, and how digital media could affect their marketing tactics. Moreno and her team are interested in analyzing the Cyclistic historical bike trip data to identify trends.

***The Business Task:***

The goal of this business case study is to provide clear information on how to convert casual riders to annual member through marketing strategies.
1. How do annual members and casual riders use Cyclistic bikes differently? 
2. Why would casual riders buy Cyclistic annual memberships? 
3. How can Cyclistic use digital media to influence casual riders to become members?

***Methodology:***

In this Google data analytics capstone project, I will follow the 6 process of data analysis that consists of
1.	Ask
2.	Prepare
3.	Process
4.	Analyze
5.	Share
6.	Act


***Preparing the data:***

This case study uses Cyclistic's historical trip data (previous 6 months) to analyze and identify trends. The data has been made available by Motivate International Inc. under and open license. 
This data is reliable, original and current as it is internally collected and stored safely by Cyclistic from Feb 2023 to July 2023. Personal information regarding the customers information are not available due to data privacy.


## ***Processing the Data from Dirty to Clean:***

***Tools***

To clean the dataset, I chose to use Rstudio. This is because Excel can’t handle huge data so I chose to use R which is relatively fast and thus useful in dealing with huge datasets. 

***Cleaning the data***

After reading in and combining the 6 datasets into a single dataframe, the first step in data cleaning was to identify which columns and rows have missing data. I discovered that 6 out of 13 columns had missing data. When comparing with huge dataset the missing values were tiny and so I decided to remove them.

After dropping rows with missing data, I checked if there are any duplicates in the dataset. None of the rows were duplicated. After this step, I just checked counted how many unique values are there in the dataset.

***Transforming the data***

After that, I converted the datatypes of the  column started_at and ended_at which were strings rather than datetime.
Then ,I created a four new columns using started_at and ended_at for hour and date separately.
Next, I created the ride_length column by using the difference between the ended_at and started_at columns. This gave  a timedata object which I converted to seconds then to hours.
Additionally, I created one more columns to show the weekdays. These contain the day of the week in which a bike was hired.
After that, I found out that there were negative values and rides length in just seconds and there were some bikes taken to the company for testing . Therefore, I filtered out those data.
Finally, I got the summary of the data and concluded the data was ready for analysis.

After this I used Tableau for analysis and visualization.

## **Analysis**
According to data collected since Feb 2023, the Casual customers are dominated by annual members, with 14,13,747 members versus only 8,32,143 casual customers active in the last 6 months. Analysis of daily rides reveals that  most Cyclistic members rides are higher in weekdays when compared to weekends while casual rides appear to have a higher average ridership on weekends than weekdays, with peak rides occurring on Saturdays.
![image](https://github.com/Saran-B12/Cyclists-company/assets/147708230/07d62673-56f7-4877-b446-84cfdcdfb32b)

These patterns indicate that Cylistic members tend to use bikes on a daily basis wheareas casual customer may be more interested in using bikes on weekend days. In addition to this , the casual customers tend to spend more time on riding the bikes than the Cyclistic members, suggesting that casual customers travel a long distance or going for a trip while members are using rides from point to point destination (eg: homw to office and vice versa). 
![image](https://github.com/Saran-B12/Cyclists-company/assets/147708230/908ac2c7-c587-4ec3-875a-383ed932ba72)
The above chart indicates that the trip taken (in minutes) by annual members are less than the trip length taken by casual customers.
![image](https://github.com/Saran-B12/Cyclists-company/assets/147708230/3c2fef56-472c-4960-b83d-b395db35ce69)
In this the classic bikes are most prefered by both members and casual customer followed by electric bikes.Every member does not use docked bike only casual customer use it and also not many uses it.

## **Recommendations**

To convert casual riders into annual members, the following marketing strategies can be implemented:
1. We can give offers and discounts to customers on subscriber plans with specific to weekends.
2. We can increase rental prices for weekends, so that the customers have certain incentive to convert to members.
3. Give offers members who travel long distance this may lead for casual customers  to become a member.
