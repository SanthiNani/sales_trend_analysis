SELECT
    Product_Category,
    YEAR([Date]) AS [Year],
    MONTH([Date]) AS [Month],
    SUM(Total_Revenue) AS TotalRevenue,
    COUNT(DISTINCT Transaction_ID) AS TotalOrders
FROM
    [Online Sales Data]
GROUP BY
    Product_Category,
    YEAR([Date]),
    MONTH([Date])
ORDER BY
    Product_Category,
    [Year],
    [Month];
SELECT
    Region,
    YEAR([Date]) AS [Year],
    MONTH([Date]) AS [Month],
    SUM(Total_Revenue) AS TotalRevenue,
    COUNT(DISTINCT Transaction_ID) AS TotalOrders
FROM
    [Online Sales Data]
GROUP BY
    Region,
    YEAR([Date]),
    MONTH([Date])
ORDER BY
    Region,
    [Year],
    [Month];
SELECT
    Payment_Method,
    YEAR([Date]) AS [Year],
    MONTH([Date]) AS [Month],
    SUM(Total_Revenue) AS TotalRevenue,
    COUNT(DISTINCT Transaction_ID) AS TotalOrders
FROM
    [Online Sales Data]
GROUP BY
    Payment_Method,
    YEAR([Date]),
    MONTH([Date])
ORDER BY
    Payment_Method,
    [Year],
    [Month];
SELECT TOP 5
    Product_Name,
    SUM(Total_Revenue) AS TotalRevenue
FROM
    [Online Sales Data]
GROUP BY
    Product_Name
ORDER BY
    TotalRevenue DESC;
SELECT
    YEAR([Date]) AS [Year],
    MONTH([Date]) AS [Month],
    SUM(Total_Revenue) AS TotalRevenue,
    COUNT(DISTINCT Transaction_ID) AS TotalOrders
FROM
    [Online Sales Data]
GROUP BY
    YEAR([Date]), MONTH([Date])
ORDER BY
    [Year], [Month];

