
#KPI:s

# Return on marketing investment (ROMI)

SELECT campaign_name, ROUND((SUM(revenue) - SUM(mark_spent)) / SUM(mark_spent),2) AS ROMI
FROM ecom0606
GROUP BY campaign_name
ORDER BY ROMI DESC;

# Click through rate (CTR)

SELECT campaign_name, (SUM(clicks)/SUM(impressions)) * 100 AS ctr 
FROM ecom0606
GROUP BY campaign_name 
ORDER BY ctr DESC; 

# Conversion rate (Leads to sales)

SELECT campaign_name, (SUM(orders)/SUM(leads))*100 as conversion_rate
FROM ecom0606
GROUP BY campaign_name
ORDER BY conversion_rate DESC; 

# Avarage order value (AOV)

SELECT campaign_name, ROUND(SUM(revenue)/SUM(orders),2) AS AOV
FROM ecom0606
GROUP BY 1
ORDER BY AOV DESC; 

# Cost per click (CPC)

SELECT campaign_name,ROUND(SUM(mark_spent)/SUM(clicks),2) AS CPC
FROM ecom0606
GROUP BY campaign_name 
ORDER BY CPC DESC; 

# Cost per lead (CPL)

SELECT campaign_name, ROUND(SUM(mark_spent)/SUM(leads),2) AS CPL 
FROM ecom0606
GROUP BY campaign_name
ORDER BY CPL DESC; 

# Gross profit 

SELECT campaign_name, ROUND(SUM(revenue) - SUM(mark_spent),2) AS profit 
FROM ecom0606
GROUP BY campaign_name
ORDER BY profit DESC; 




