use ecommerce_shipping_data;
SELECT * FROM ecommerce_shipping_data;

-- Analyze the distribution of warehouse block:

SELECT Warehouse_block, COUNT(*) AS BlockCount
FROM ecommerce_shipping_data
GROUP BY Warehouse_block
ORDER BY BlockCount DESC;

-- shipment mode distribution :

SELECT Mode_of_Shipment , count(*) AS BlockCount
FROM ecommerce_shipping_data
GROUP BY Mode_of_shipment
ORDER BY BlockCount ASC;

-- rows which has cost of the product more than 200 : 
SELECT * 
FROM ecommerce_shipping_data
WHERE cost_of_the_product >= 200
ORDER BY Warehouse_block ASC;

-- Product Importance :

SELECT Product_importance, COUNT(*) AS ImportanceCount
FROM ecommerce_shipping_data
GROUP BY Product_importance
ORDER BY ImportanceCount DESC;

 -- Gender Distribution:

SELECT Gender, COUNT(*) AS GenderCount
FROM ecommerce_shipping_data
GROUP BY Gender;

--  customer care calls for each warehouse :

SELECT warehouse_block , COUNT(customer_care_calls)
FROM ecommerce_shipping_data
GROUP BY warehouse_block
HAVING COUNT(customer_care_calls) > 4
ORDER BY warehouse_block ASC;

ALTER TABLE ecommerce_shipping_data
ADD reached_on_time_y_n varchar(10);

SELECT * FROM ecommerce_shipping_data;