# 🏃‍♂️ 50-Mile Race Data Analysis Project
This end-to-end data analysis project explores and visualizes real-world endurance race data from a 50-mile ultramarathon event. The goal is to derive insights about race performance, runner demographics, and pacing trends through a full modern data workflow. This project demonstrates key data analysis skills including data cleaning, data wrangling, SQL querying, and interactive dashboard development using Looker Studio. 
 📌 [Click here to view the interactive dashboard](https://lookerstudio.google.com/reporting/c2f92b9e-8a38-4d25-9d96-68377180c03f)

## 🧰 Tools & Technologies Used
- Excel – Initial data inspection and basic cleaning
- Python (Pandas, GeoPy) – Data preprocessing, transformation, and exploratory analysis
- SQL (MySQL) – Querying structured race data
- Google Looker Studio – Building interactive data dashboards for visualization
- Jupyter Notebook – Code development and documentation

## ✅ Skills Demonstrated
- Data Cleaning (Excel and Python)
- Exploratory Data Analysis (EDA)
- SQL Query Design and Optimization
- Data Visualization & Storytelling
- Building Interactive Dashboards
- End-to-End Data Pipeline Development

## 🔄 Data Pipeline Overview
This project follows a structured data pipeline architecture, ensuring scalability, reproducibility, and clarity across each stage of the data lifecycle.

🧱 1. Data Collection
- Source: Race results were scraped/downloaded from the [Forgotten Florida 50 Race Results page](https://ultrasignup.com/results_event.aspx?did=102259).
- Format: Raw data was in .xlsx format containing runner names, times, ages, ranks etc.

🧼 2. Data Ingestion
- Tool: Microsoft Excel
- Action: Initial validation and manual corrections were performed to handle:
  - Incomplete records
  - Obvious inconsistencies in time/distance columns
  - Formatting issues

🧪 3. Data Processing
- Tool: Python (Pandas)
- Steps:
  - Cleaned and normalized field names
  - Converted time fields to usable numeric formats
  - Engineered new features (e.g., longitude/latitude, total minutes)
  - Filtered out invalid entries (e.g., DNF with no time data)

🛢️ 4. Data Storage
- Tool: MySQL
- Purpose: Loaded the cleaned dataset into a MySQL database for structured querying and scalable access.

📊 5. Data Analysis
Tools:
  - SQL: Wrote queries to calculate group stats, runner segmentation, and performance trends.
  - Looker Studio: Created an interactive dashboard to visualize key findings using charts, filters, and summary tables.
  - [Click here to view the dashboard](https://lookerstudio.google.com/reporting/c2f92b9e-8a38-4d25-9d96-68377180c03f)

This pipeline demonstrates proficiency in:
- ETL (Extract, Transform, Load) practices
- Relational database querying with SQL
- Scalable data transformation using Pandas
- Business Intelligence dashboarding with Looker Studio

## 🚀 Future Improvements
- Integrate weather data for race day to assess environmental impact
- Use clustering (e.g., k-means) to group runners by performance profiles
- Deploy the dashboard as a web app using Streamlit or Flask

## 🧠 What I Learned
- This project sharpened my skills in:
  - End-to-end data pipeline design
  - Working with semi-structured real-world datasets
  - Communicating insights through interactive dashboards
  - Bridging spreadsheet analysis with scalable Python and SQL workflows
