Data Warehouse and Analytics Project
Welcome to the Data Warehouse and Analytics Project repository! 🚀
This project demonstrates a comprehensive data warehousing and analytics solution, from building a data warehouse to generating actionable insights. Designed as a portfolio project, it highlights industry best practices in data engineering and analytics.

Bronze Layer: Stores raw data as-is from the source systems. Data is ingested from CSV Files into SQL Server Database.
Silver Layer: This layer includes data cleansing, standardization, and normalization processes to prepare data for analysis.
Gold Layer: Houses business-ready data modeled into a star schema required for reporting and analytics.
 Project Overview
This project involves:

Data Architecture: Designing a Modern Data Warehouse Using Medallion Architecture Bronze, Silver, and Gold layers.
ETL Pipelines: Extracting, transforming, and loading data from source systems into the warehouse.
Data Modeling: Developing fact and dimension tables optimized for analytical queries.
Analytics & Reporting: Creating SQL-based reports and dashboards for actionable insights.
 This repository is an excellent resource for professionals and students looking to showcase expertise in:

SQL Development
Data Architect
Data Engineering
ETL Pipeline Developer
Data Modeling
Data Analytics

Project Requirements
Building the Data Warehouse (Data Engineering)
Objective
Develop a modern data warehouse using SQL Server to consolidate sales data, enabling analytical reporting and informed decision-making.

Specifications
Data Sources: Import data from two source systems (ERP and CRM) provided as CSV files.
Data Quality: Cleanse and resolve data quality issues prior to analysis.
Integration: Combine both sources into a single, user-friendly data model designed for analytical queries.
Scope: Focus on the latest dataset only; historization of data is not required.
Documentation: Provide clear documentation of the data model to support both business stakeholders and analytics teams.

📂 Data Warehouse Project Structure
1. datasets/
- Contains raw datasets used for the project.
- Sources: ERP and CRM systems.
- Purpose: Acts as the Bronze layer (raw ingestion).

2. docs/
Project documentation and architecture details.
- etl.drawio → Diagram showing ETL techniques and methods.
- data_architecture.drawio → Overall project architecture diagram.
- data_catalog.md → Dataset catalog with field descriptions and metadata.
- data_flow.drawio → Data flow diagram (how data moves through layers).
- data_models.drawio → Data models (e.g., star schema).
- naming-conventions.md → Guidelines for consistent naming of tables, columns, and files.

3. scripts/
SQL scripts for ETL and transformations.
- bronze/ → Scripts for extracting and loading raw data.
- silver/ → Scripts for cleaning and transforming data.
- gold/ → Scripts for creating analytical models (business-ready).

4. tests/
- Test scripts and quality assurance files.
- Ensures data accuracy, consistency, and reliability across layers.

5. Root Files
- README.md → Project overview and instructions.
- LICENSE → License information for repository usage.
- .gitignore → Specifies files/directories ignored by Git.
- requirements.txt → Dependencies and requirements for the project.
