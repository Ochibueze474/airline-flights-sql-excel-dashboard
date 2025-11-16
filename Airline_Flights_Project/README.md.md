✈️ Airline Flights Analysis Business Insights

Hey there! 👋
This project dives into airline performance, passenger trends, and flight reliability. I looked at the data to figure out which airlines are doing great, which routes are most popular, and where delays or cancellations are happening. Along the way, I pulled out insights and recommendations that could actually help an airline improve operations and customer experience.

Cleaning Approach:

I focused on cleaning the columns that directly influence the analysis.

Non-critical columns with missing data (e.g., Flight Number, Class etc.) were filled with the placeholder “UNKNOWN” to maintain dataset completeness without removing valid records.
Critical blanks were removed to ensure clean analysis.  
Columns with missing values that were not required for the insights were left untouched, as removing them would reduce the dataset without adding value.

Some Flights show LOS – LOS as the departure and arrival airports. These rows have complete data (airline, passengers, ticket prices, class etc.) but aren’t real passengers routes, so they were filtered out for route-based charts.

🛠️ Tools & Technologies
    Task	              Tool
    Data Extraction	   SQL
    Data Cleaning	         Excel
    Data Modeling	         Excel Data Model/Relationships
    Visualization	         Excel Dashboard (Charts + Slicers)



1. Top 10 Airlines by Total Passengers

-- Insight: Identifies top performing airlines by traffic volume, helping management assess market share and performance.

--Why it matters: These airlines are clearly the heavy hitters in the market. Knowing this helps prioritize partnerships, marketing, and resource allocation.

--What I’d suggest: Make sure these top airlines are supported well, and maybe look into why smaller airlines aren’t attracting as many passengers.

2. Average Delay per Airline

-- Insight: Reveals operational reliability and customer experience differences between airlines.

--Why it matters: Delays affect customer satisfaction and can cost the airline money.

--What I’d suggest: Work with the airlines that struggle with delays to improve scheduling and on time performance.

3. Most Frequent Routes (Top 10)

-- Insight: Helps identify popular travel corridors and potential opportunities for more flights or premium pricing.

--Why it matters: Popular routes need more attention maybe bigger planes or more flights to handle demand.

--What I’d suggest: Increase capacity on high-traffic routes and make sure the flights run smoothly.

4. Average Ticket Price per Airline

-- Insight: Helps compare pricing strategy, positioning, and competitiveness of different airlines.

--Why it matters: Pricing affects revenue and competitiveness.

--What I’d suggest: Keep an eye on pricing trends and make sure premium services justify higher prices.

5. Correlation Between Price and Delay

-- Insight: Measures service quality value do customers paying more get better punctuality?

--Why it matters: Customers expect punctuality if they pay more.

--What I’d suggest: If higher fares don’t match better service, consider improving the premium experience or compensation.

6. Flight Cancellations per Airline

-- Insight: Useful for tracking service reliability and passenger disruption rates.

--Why it matters: Cancellations disrupt operations and frustrate passengers.

--What I’d suggest: Focus on contingency plans and closely monitor airlines with high cancellation rates.

7. Average Flight Duration by Route

-- Insight: Helps verify route data accuracy and compare efficiency across airlines or route pairs.

--Why it matters: Accurate scheduling is important for passengers and operations.

--What I’d suggest: Adjust schedules based on actual flight times to improve planning and customer satisfaction.

8. Monthly Passenger Trend

-- Insight: Reveals seasonality and demand trends useful for staffing and capacity planning.

--Why it matters: Airlines need to plan staffing and flights based on demand.

--What I’d suggest: Ramp up flights during busy months and schedule maintenance when fewer passengers are flying.

9. Delay Trends by Day of Week

-- Insight: Certain days have more delays than others, for example Mondays and Saturdays may have more congestion.

--Why it matters: Helps with scheduling staff and resources efficiently.

--What I’d suggest: Increase support and optimize operations on days with frequent delays.

10. Flights with Longest Average Delays by Route

-- Insight: A few specific routes consistently have long delays.

--Why it matters: These routes need attention to prevent ongoing customer frustration.

--What I’d suggest: Investigate the causes maybe airport congestion or scheduling issues and fix them.


