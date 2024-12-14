# Coffee Shop Sales Dashboard

![image](https://github.com/user-attachments/assets/a8768027-050c-4c3e-9b4e-8ac35a2bbe14)


## 1. Introduction  
The **Coffee Shop Sales Dashboard** is a Power BI project designed to analyze sales data for a coffee shop. It focuses on **key performance indicators (KPIs)** such as total sales, total orders, and total quantity sold. This dashboard provides actionable insights into sales trends, patterns, and comparisons to support strategic decision-making.  

### Features and Functionalities  
- **Interactive Visuals**: Includes calendar heat maps, weekday/weekend sales analysis, top-selling products, and time-based trends.  
- **Tooltips for Deep Analysis**: Enhanced tooltips provide detailed metrics (e.g., sales, orders, quantity sold) on hover for calendar and day-hour heat maps.  
- **Dynamic Filtering**: Integrated slicers to analyze specific months, store locations, and product categories.  
- **Data Integrity**: SQL used for robust data extraction, with DAX queries for calculations and dynamic filtering.  


---

## 2. Problem Statement  
Understanding coffee shop sales involves answering key business questions such as:  
- What are the daily, weekly, and monthly sales trends?  
- How do sales vary between store locations, product categories, and time periods?  
- Which products contribute the most to revenue, and how do sales compare to averages?  
- How do weekdays and weekends affect sales performance?  
- What actionable insights can be derived from these trends to optimize operations?  

The dashboard was designed to address these questions, providing a visually engaging and data-rich solution.  

---

## 3. Key Visualizations and KPIs  
### 3.1 Key Functionalities
- **Dynamic Calendar Heat Maps**: Visualize daily sales performance with color-coded intensity for quick pattern identification.  
- **Weekday vs. Weekend Insights**: Compare performance variations between weekdays and weekends.  
- **Store-wise Performance**: Analyze month-over-month sales trends for different store locations.  
- **Time-based Trends**: Heat maps reveal sales patterns by day and hour, identifying peak operational times.  
- **Category Breakdown**: Understand which product categories drive the most revenue.  
- **Top Product Rankings**: Quickly identify the best-performing products by sales volume.  
- **Interactivity**: Slicers, filters, and tooltips enhance data exploration.  

---

## 4. KPI Requirements  
The dashboard tracks the following key metrics:  

### 4.1 Total Sales Analysis

![image](https://github.com/user-attachments/assets/fedb9f9c-d7dd-4581-a37c-00738d9591f3)

- Displays total sales for each month.  
- Highlights month-over-month (MoM) changes.  
- Compares trends with the previous month.  

### 4.2 Total Orders Analysis  

![image](https://github.com/user-attachments/assets/9ade6a15-efe5-48f4-bca3-fe338b357943)

- Visualizes the total number of orders placed each month.  
- Highlights MoM variations in the number of orders.  

### 4.3 Total Quantity Sold Analysis  

![image](https://github.com/user-attachments/assets/b4b4f3bd-b1e1-47d1-ba7e-0c02e234816a)

- Tracks the total quantity sold each month.  
- Displays MoM changes and trends.  

---

## 5. Chart Requirements  

### 5.1 Calendar Heat Map

![image](https://github.com/user-attachments/assets/60f2c723-18a5-4365-9f2a-38b04861b542)

![image](https://github.com/user-attachments/assets/4b8771df-799b-4f08-8626-cfa1b10c7ca8)

- Dynamically adjusts based on the selected month using slicers.  
- Color-coding represents daily sales volume, with detailed tooltips for additional metrics (Sales, Orders, Quantity).  

### 5.2 Weekday vs. Weekend Sales Analysis  

![image](https://github.com/user-attachments/assets/9e5052a2-f071-489f-8052-8dc86cd9ce27)

- Compares sales trends across weekdays and weekends.  
- Provides insights into performance variations.  

### 5.3 Sales by Store Location

![image](https://github.com/user-attachments/assets/c9f08e64-3b17-4484-9716-c55b69445eea)

- Displays sales data for different store locations.  
- Highlights MoM differences and performance changes for each location.  

### 5.4 Daily Sales Analysis with Average Line

![image](https://github.com/user-attachments/assets/2e0519db-f2ea-46a5-bf49-4a220b069947)

- Shows daily sales trends for the selected month.  
- Highlights days performing above or below the average daily sales.  

### 5.5 Sales Analysis by Product Category

![image](https://github.com/user-attachments/assets/27692926-4c20-4610-86d5-9267ea4ce025)

- Analyzes sales contributions of different product categories.  
- Identifies top-performing categories by revenue.  

### 5.6 Top 10 Products by Sales

![image](https://github.com/user-attachments/assets/06df1bc9-7f78-4949-9d5b-73228bf6f8db)

- Ranks the best-performing products based on sales volume.  

### 5.7 Heat Map: Sales by Days and Hours

![image](https://github.com/user-attachments/assets/e2757dfb-26f5-410d-9d6d-06212c7c468b)

![image](https://github.com/user-attachments/assets/040210a1-4180-4f89-a441-92eb2c6797af)

- Visualizes sales patterns across hours of the day and days of the week.  
- Includes detailed metrics in tooltips.  

---

## 6. Dashboard Components  
The Power BI file includes the following components:  

### 6.1 Main Dashboard  

![image](https://github.com/user-attachments/assets/a8768027-050c-4c3e-9b4e-8ac35a2bbe14)

- Primary page featuring all KPIs and major visualizations.

### 6.2 Tooltip for Calendar Heat Map

![image](https://github.com/user-attachments/assets/e24e98a5-4f77-48de-832e-4a9eee44ac65)

- Provides detailed insights into specific dates.  

### 6.3 Tooltip for Day and Hour Heat Map 

![image](https://github.com/user-attachments/assets/ee513065-45d2-4b95-a472-e8ee4b4812c3)

- Offers granular details for time-based sales performance.  

---
