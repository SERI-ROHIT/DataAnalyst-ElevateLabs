-- Calculate total sales, total profit, and profit margin by Category
SELECT 
    Category,
    SUM(Sales) AS Total_Sales,
    SUM(Profit) AS Total_Profit,
    ROUND(SUM(Profit) / NULLIF(SUM(Sales), 0), 2) AS Profit_Margin
FROM 
retails_data.`retail business performance and profit dataset`
GROUP BY 
    Category;

-- Calculate the same at Sub-Category level
SELECT 
  Category,
  `Sub-Category`,
  SUM(Sales) AS Total_Sales,
  SUM(Profit) AS Total_Profit,
  ROUND(SUM(Profit) / SUM(Sales), 2) AS Profit_Margin
FROM retails_data.`retail business performance and profit dataset`
GROUP BY Category, `Sub-Category`
ORDER BY Profit_Margin;


