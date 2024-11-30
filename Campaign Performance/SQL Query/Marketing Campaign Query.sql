-- Create the database
CREATE DATABASE MarketingCampaign;

-- Use the database
USE MarketingCampaign;

-- Creating the MarketingCampaignData table 
CREATE TABLE MarketingCampaignData (
    Campaign_ID INT,
    Channel VARCHAR(50),
    Date DATE,
    Impressions INT,
    Clicks INT,
    Conversions INT,
    Cost DECIMAL(10, 2)
);
-- Insert data into the MarketingCampaignData table
INSERT INTO MarketingCampaignData (Campaign_ID, Channel, Date, Impressions, Clicks, Conversions, Cost) VALUES
(1, 'Email', '2023-01-01', 10000, 200, 50, 500.00),
(2, 'Social', '2023-01-01', 15000, 300, 75, 700.00),
(3, 'Search', '2023-01-02', 20000, 400, 100, 900.00),
(4, 'Display', '2023-01-02', 12000, 240, 60, 600.00),
(5, 'Email', '2023-01-03', 11000, 220, 55, 550.00),
(6, 'Social', '2023-01-03', 16000, 320, 80, 750.00),
(7, 'Search', '2023-01-04', 21000, 420, 105, 950.00),
(8, 'Display', '2023-01-04', 13000, 260, 65, 650.00),
(9, 'Email', '2023-01-05', 14000, 280, 70, 700.00),
(10, 'Social', '2023-01-05', 17000, 340, 85, 800.00),
(11, 'Search', '2023-01-06', 22000, 440, 110, 1000.00),
(12, 'Display', '2023-01-06', 15000, 300, 75, 750.00),
(13, 'Email', '2023-01-07', 16000, 320, 80, 800.00),
(14, 'Social', '2023-01-07', 18000, 360, 90, 850.00),
(15, 'Search', '2023-01-08', 23000, 460, 115, 1050.00),
(16, 'Display', '2023-01-08', 17000, 340, 85, 850.00),
(17, 'Email', '2023-01-09', 18000, 360, 90, 900.00),
(18, 'Social', '2023-01-09', 19000, 380, 95, 900.00),
(19, 'Search', '2023-01-10', 24000, 480, 120, 1100.00),
(20, 'Display', '2023-01-10', 19000, 380, 95, 900.00),
(21, 'Email', '2023-01-11', 13000, 260, 65, 650.00),
(22, 'Social', '2023-01-11', 14000, 280, 70, 700.00),
(23, 'Search', '2023-01-12', 25000, 500, 125, 1200.00),
(24, 'Display', '2023-01-12', 16000, 320, 80, 800.00),
(25, 'Email', '2023-01-13', 17000, 340, 85, 850.00),
(26, 'Social', '2023-01-13', 18000, 360, 90, 900.00),
(27, 'Search', '2023-01-14', 26000, 520, 130, 1250.00),
(28, 'Display', '2023-01-14', 17000, 340, 85, 850.00),
(29, 'Email', '2023-01-15', 14000, 280, 70, 700.00),
(30, 'Social', '2023-01-15', 15000, 300, 75, 750.00);

-- Calculation total clicks, conversions, and cost by channel
SELECT 
    Channel,
    SUM(Clicks) AS Total_Clicks,
    SUM(Conversions) AS Total_Conversions,
    SUM(Cost) AS Total_Cost
FROM 
    MarketingCampaignData
GROUP BY 
    Channel;
    
-- Calculation of impressions, clicks, and conversions by channel
SELECT 
    Channel,
    SUM(Impressions) AS Total_Impressions,
    SUM(Clicks) AS Total_Clicks,
    SUM(Conversions) AS Total_Conversions
FROM 
    MarketingCampaignData
GROUP BY 
    Channel;
    
-- Calculation of total impressions, clicks, conversions, and cost 
SELECT 
    SUM(Impressions) AS Total_Impressions,
    SUM(Clicks) AS Total_Clicks,
    SUM(Conversions) AS Total_Conversions,
    SUM(Cost) AS Total_Cost
FROM 
    MarketingCampaignData;
    
-- Calculation of metrics by campaign and channel
SELECT 
    Campaign_ID,
    Channel,
    SUM(Impressions) AS Total_Impressions,
    SUM(Clicks) AS Total_Clicks,
    SUM(Conversions) AS Total_Conversions,
    SUM(Cost) AS Total_Cost
FROM 
    MarketingCampaignData
GROUP BY 
    Campaign_ID, 
    Channel;
    
-- Calculation of trends over time (e.g., daily)
SELECT 
    Date,
    SUM(Impressions) AS Daily_Impressions,
    SUM(Clicks) AS Daily_Clicks,
    SUM(Conversions) AS Daily_Conversions,
    SUM(Cost) AS Daily_Cost
FROM 
    MarketingCampaignData
GROUP BY 
    Date
ORDER BY 
    Date;
    
-- Calculation of CTR, Conversion Rate, and other metrics for each campaign
SELECT
    Campaign_ID,
    Channel,
    SUM(Impressions) AS Total_Impressions,
    SUM(Clicks) AS Total_Clicks,
    SUM(Conversions) AS Total_Conversions,
    SUM(Cost) AS Total_Cost,
    (SUM(Clicks) / SUM(Impressions)) AS CTR,  -- Calculate Click-Through Rate
    (SUM(Conversions) / SUM(Clicks)) AS Conversion_Rate,  -- Calculate Conversion Rate
    (SUM(Cost) / SUM(Clicks)) AS CPC,  -- Calculate Cost per Click
    (SUM(Cost) / SUM(Conversions)) AS CPA  -- Calculate Cost per Acquisition
FROM
    MarketingCampaignData
GROUP BY
    Campaign_ID, Channel;