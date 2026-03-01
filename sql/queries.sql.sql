--  ✈️ AIRLINE FLIGHTS SQL BUSINESS INSIGHTS PROJECT

-- Description: Data-driven insights into airline performance, punctuality, and passenger operations.

-- 1. Top Airlines by Total Passengers
-- Question: Which airlines carry the highest number of passengers overall?

SELECT 
Airline,
SUM(Passenger_Count) AS Total_Passengers
FROM
airline_flights
GROUP BY
Airline
ORDER BY
Total_Passengers DESC;

-- Insight: Identifies top performing airlines by traffic volume, helping management assess market share and performance.

-- Why it matters: These airlines are clearly the heavy hitters in the market. Knowing this helps prioritize partnerships, marketing, and resource allocation.

-- What I’d suggest: Make sure these top airlines are supported well, and maybe look into why smaller airlines aren’t attracting as many passengers.



-- 2. Average Delay per Airline
-- Question: Which airlines experience the longest average delays?

SELECT
Airline,
ROUND(AVG(Delay_Minutes),0) AS Average_Delay_minute
FROM
airline_flights
GROUP BY
Airline
ORDER BY
Average_Delay_minute DESC;

-- Insight: Reveals operational reliability and customer experience differences between airlines.

-- Why it matters: Delays affect customer satisfaction and can cost the airline money.

-- What I’d suggest: Work with the airlines that struggle with delays to improve scheduling and on time performance.


-- 3. Most Frequent Routes
-- Question: What are the top 10 most frequently flown routes?

SELECT
Route,
COUNT(*) AS Flight_Count
FROM 
airline_flights
GROUP BY
Route
ORDER BY
Flight_Count DESC
LIMIT 10;

-- Insight: Helps identify popular travel corridors and potential opportunities for more flights or premium pricing.

-- Why it matters: Popular routes need more attention maybe bigger planes or more flights to handle demand.

-- What I’d suggest: Increase capacity on high-traffic routes and make sure the flights run smoothly.


-- 4. Average Ticket Price per Airline
-- Question: How does average ticket price vary across airlines?

SELECT
Airline,
ROUND(AVG(Ticket_Price),2) AS Average_Ticket_Price
FROM
airline_flights
GROUP BY 
Airline
ORDER BY
Average_Ticket_Price DESC;

-- Insight: Helps compare pricing strategy, positioning, and competitiveness of different airlines.

-- Why it matters: Pricing affects revenue and competitiveness.

-- What I’d suggest: Keep an eye on pricing trends and make sure premium services justify higher prices.


-- 5. Correlation Between Price and Delay
-- Question: Do higher-priced tickets tend to have shorter delays?

SELECT
CASE 
WHEN Ticket_Price < 50 THEN '<50'
WHEN Ticket_Price BETWEEN 50 AND 100 THEN '50-100'
ELSE '>100'
END AS Price_Bracket,
ROUND(AVG(Delay_Minutes),0) AS Average_Delay
FROM
airline_flights
GROUP BY
Price_Bracket
ORDER BY
Price_Bracket;


-- Insight: Measures service quality value do customers paying more get better punctuality?

-- Why it matters: Customers expect punctuality if they pay more.

-- What I’d suggest: If higher fares don’t match better service, consider improving the premium experience or compensation.



-- 6. Flight Cancellations per Airline
-- Question: Which airlines have the highest cancellation rates?

SELECT
Airline,
SUM(CASE WHEN Cancelled = 'Yes' THEN 1 ELSE 0 END) AS Total_Cancellations,
COUNT(*) AS Total_Flights,
ROUND(SUM(CASE WHEN Cancelled = 'Yes' THEN 1 ELSE 0 END) / COUNT(*) * 100, 2) AS Cancellation_Rate_Percent
FROM
airline_flights
GROUP BY
Airline
ORDER BY
Cancellation_Rate_Percent DESC;


-- Insight: Useful for tracking service reliability and passenger disruption rates.

-- Why it matters: Cancellations disrupt operations and frustrate passengers.

-- What I’d suggest: Focus on contingency plans and closely monitor airlines with high cancellation rates.



-- 7. Average Flight Duration by Route
-- Question: What is the typical flight duration for each route?

SELECT
Route,
ROUND(AVG(FlightDuration_minutes),0) AS Average_Flight_Duration_Minute
FROM
airline_flights
GROUP BY
Route
ORDER BY
Average_Flight_Duration_Minute DESC;

-- Insight: Helps verify route data accuracy and compare efficiency across airlines or route pairs.

-- Why it matters: Accurate scheduling is important for passengers and operations.

-- What I’d suggest: Adjust schedules based on actual flight times to improve planning and customer satisfaction.



-- 8. Monthly Passenger Trend
-- Question: How does total passenger volume change month by month?

SELECT
YEAR(Departure_Time) AS YearNum,
MONTH(Departure_Time) AS MonthNum,
ANY_VALUE(CONCAT(YEAR(Departure_Time) , '-', DATE_FORMAT(Departure_Time,'%M'))) AS YearMonth,
SUM(Passenger_Count) AS Passengers
FROM
airline_flights
GROUP BY
YearNum, MonthNum
ORDER BY
YearNum, MonthNum;

-- Insight: Reveals seasonality and demand trends useful for staffing and capacity planning.

-- Why it matters: Airlines need to plan staffing and flights based on demand.

-- What I’d suggest: Ramp up flights during busy months and schedule maintenance when fewer passengers are flying.



-- 9. Delay Trends by Day of Week
-- Question: On which days of the week do flights experience the longest average delays?

SELECT 
DAYNAME(Departure_Time) AS DayName,
ROUND(AVG(Delay_Minutes),0) AS Average_delays_minute
FROM airline_flights
GROUP BY DayName
ORDER BY Average_delays_minute DESC;


-- Insight: Certain days have more delays than others, for example Mondays and Saturdays may have more congestion.

-- Why it matters: Helps with scheduling staff and resources efficiently.

-- What I’d suggest: Increase support and optimize operations on days with frequent delays.



-- 10. Flights with Longest Average Delays by Route
-- Question: Which routes have the longest average delay times?

SELECT
Route,
ROUND(AVG(Delay_Minutes),0) AS Average_delay_minute
FROM
airline_flights
GROUP BY
Route
ORDER BY
Average_delay_minute DESC LIMIT 10;

-- Insight: A few specific routes consistently have long delays.

-- Why it matters: These routes need attention to prevent ongoing customer frustration.

-- What I’d suggest: Investigate the causes maybe airport congestion or scheduling issues and fix them.

