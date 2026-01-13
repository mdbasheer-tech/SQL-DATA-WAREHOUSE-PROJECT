-- =============================================
-- DDL Script for Bronze Layer Tables
-- =============================================

-- Create schema if not exists
IF NOT EXISTS (SELECT * FROM sys.schemas WHERE name = 'bronze')
    EXEC('CREATE SCHEMA bronze');

-- =============================================
-- CRM Tables
-- =============================================

-- Customer Info
IF OBJECT_ID('bronze.crm_cust_info', 'U') IS NOT NULL
    DROP TABLE bronze.crm_cust_info;
CREATE TABLE bronze.crm_cust_info (
    cust_id        INT PRIMARY KEY,
    cust_name      NVARCHAR(100),
    cust_email     NVARCHAR(150),
    cust_phone     NVARCHAR(50),
    cust_address   NVARCHAR(250)
);

-- Product Info
IF OBJECT_ID('bronze.crm_prd_info', 'U') IS NOT NULL
    DROP TABLE bronze.crm_prd_info;
CREATE TABLE bronze.crm_prd_info (
    prd_id         INT PRIMARY KEY,
    prd_name       NVARCHAR(100),
    prd_category   NVARCHAR(50),
    prd_price      DECIMAL(18,2)
);

-- Sales Details
IF OBJECT_ID('bronze.crm_sales_details', 'U') IS NOT NULL
    DROP TABLE bronze.crm_sales_details;
CREATE TABLE bronze.crm_sales_details (
    sales_id       INT PRIMARY KEY,
    cust_id        INT,
    prd_id         INT,
    sales_date     DATE,
    sales_qty      INT,
    sales_amount   DECIMAL(18,2)
);

-- =============================================
-- ERP Tables
-- =============================================

-- Location A101
IF OBJECT_ID('bronze.erp_loc_a101', 'U') IS NOT NULL
    DROP TABLE bronze.erp_loc_a101;
CREATE TABLE bronze.erp_loc_a101 (
    loc_id         INT PRIMARY KEY,
    loc_name       NVARCHAR(100),
    loc_region     NVARCHAR(50)
);

-- Customer AZ12
IF OBJECT_ID('bronze.erp_cust_az12', 'U') IS NOT NULL
    DROP TABLE bronze.erp_cust_az12;
CREATE TABLE bronze.erp_cust_az12 (
    cust_id        INT PRIMARY KEY,
    cust_segment   NVARCHAR(50),
    cust_status    NVARCHAR(50)
);

-- Product Category G1V2
IF OBJECT_ID('bronze.erp_px_cat_g1v2', 'U') IS NOT NULL
    DROP TABLE bronze.erp_px_cat_g1v2;
CREATE TABLE bronze.erp_px_cat_g1v2 (
    cat_id         INT PRIMARY KEY,
    cat_name       NVARCHAR(100),
    cat_desc       NVARCHAR(250)
);

-- =============================================
-- End of Bronze Layer DDL
-- =============================================
