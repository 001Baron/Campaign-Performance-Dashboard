# Interactive Marketing Dashboard with SQL and Power BI

This project demonstrates the creation of an interactive marketing dashboard using SQL for data preparation and Power BI for visualization. The dashboard provides insights into marketing campaign performance, channel effectiveness, and key metrics.

## Project Objective

To develop an interactive marketing dashboard that:

* Visualizes campaign performance across different channels and over time.
* Analyzes the effectiveness of various marketing channels.
* Enables interactive exploration of data through filters and slicers.

## Dataset

The dataset used for this project contains information about marketing campaigns, including:

* Campaign ID
* Channel (e.g., Email, Social, Search, Display)
* Date
* Impressions
* Clicks
* Conversions
* Cost

## SQL Queries

SQL queries were used to aggregate and prepare the data for visualization in Power BI. The queries included:

* **Total clicks, conversions, and cost by channel:** To analyze channel performance.
* **Impressions, clicks, and conversions by channel:** To compare channel effectiveness.
* **Total impressions, clicks, conversions, and cost:** To calculate overall KPIs.
* **Metrics by campaign and channel:** To provide a detailed breakdown.
* **Trends over time:** To visualize daily changes in key metrics.
* **CTR, Conversion Rate, CPC, and CPA by campaign:** To assess campaign efficiency.

## Power BI Dashboard

The Power BI dashboard provides the following visualizations:

* **KPIs:** Card visualizations displaying total impressions, clicks, conversions, and cost.
* **Channel Performance:**
    * Bar chart showing the sum of impressions, conversions, and clicks by channel.
    * Pie chart showing the sum of conversions by channel.
* **Campaign Performance:**
    * Pie charts showing clicks and impressions by campaign ID.
    * Waterfall chart visualizing cost and count of campaigns by channel.
    * Line chart showing trends over time for daily impressions, clicks, cost, and conversions.
* **Slicers:** Slicers for "Campaign ID" and "Channel" to filter the data interactively.

## Tools Used

* MySQL 
* Power BI Desktop

## Dashboard Screenshot

![image](https://github.com/user-attachments/assets/295d1dab-69ae-4ab8-a6e4-d2483cfe2887)



## Author

Rohit Kumar

## Notes

* This dashboard provides insights into marketing campaign performance and channel effectiveness.
* The ROI calculation is not included in this version of the dashboard due to the lack of conversion value data in the dataset.
* Future improvements could include adding more KPIs, refining visualizations, and incorporating ROI calculations once conversion value data is available.
