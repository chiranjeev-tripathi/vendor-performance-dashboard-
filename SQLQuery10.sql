CREATE DATABASE vendor_performance;


CREATE VIEW vw_BrandPerformance AS
SELECT
    s.Brand,
    MAX(s.Description) AS ProductName,
    SUM(s.SalesQuantity) AS TotalQuantitySold,
    SUM(s.SalesDollars) AS TotalRevenue,
    SUM(s.SalesQuantity * pp.Price) AS TotalPurchaseCost,
    SUM(s.SalesDollars) -
    SUM(s.SalesQuantity * pp.Price) AS TotalProfit
FROM sales s
JOIN purchase_prices pp
ON s.Brand = pp.Brand
GROUP BY s.Brand;

CREATE VIEW vw_BrandRevenueInventory AS
SELECT
    s.Brand,
    SUM(s.SalesDollars) AS Revenue,
    SUM(ISNULL(bi.onHand,0)) AS BeginningInventory,
    SUM(ISNULL(ei.onHand,0)) AS EndingInventory,
    SUM(ISNULL(bi.onHand,0)) -
    SUM(ISNULL(ei.onHand,0)) AS InventorySold
FROM sales s
LEFT JOIN begin_inventory bi
ON s.InventoryId = bi.InventoryId
LEFT JOIN end_inventory ei
ON s.InventoryId = ei.InventoryId
GROUP BY s.Brand;


CREATE VIEW vw_InventorySoldRemaining AS
SELECT
    bi.InventoryId,
    bi.Brand,
    bi.Description,

    bi.onHand AS BeginningInventory,

    ISNULL(ei.onHand,0) AS EndingInventory,

    (bi.onHand - ISNULL(ei.onHand,0)) AS InventorySold

FROM begin_inventory bi
LEFT JOIN end_inventory ei
ON bi.InventoryId = ei.InventoryId;

CREATE VIEW vw_MonthlyRevenue AS
SELECT
    YEAR(SalesDate) AS Year,
    MONTH(SalesDate) AS Month,
    DATENAME(MONTH, SalesDate) AS MonthName,
    SUM(SalesDollars) AS TotalRevenue
FROM sales
GROUP BY
YEAR(SalesDate),
MONTH(SalesDate),
DATENAME(MONTH, SalesDate);

CREATE VIEW vw_StoreRevenue AS
SELECT
    Store,
    SUM(SalesQuantity) AS TotalQuantity,
    SUM(SalesDollars) AS TotalRevenue,
    AVG(SalesPrice) AS AverageSellingPrice
FROM sales
GROUP BY Store;

CREATE VIEW vw_VendorRevenue AS
SELECT
    VendorNo,
    VendorName,
    SUM(SalesQuantity) AS TotalQuantitySold,
    SUM(SalesDollars) AS TotalRevenue
FROM sales
GROUP BY
VendorNo,
VendorName;

SELECT * FROM vw_BrandPerformance;

SELECT * FROM vw_BrandRevenueInventory;

SELECT * FROM vw_InventorySoldRemaining;

SELECT * FROM vw_MonthlyRevenue;

SELECT * FROM vw_StoreRevenue;

SELECT * FROM vw_VendorRevenue;