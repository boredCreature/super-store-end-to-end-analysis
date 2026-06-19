CREATE DATABASE superstore_db;
USE superstore_db;
CREATE TABLE orders (
    order_id        VARCHAR(20),
    order_date      DATE,
    ship_date       DATE,
    ship_mode       VARCHAR(50),
    customer_id     VARCHAR(20),
    customer_name   VARCHAR(100),
    segment         VARCHAR(50),
    country         VARCHAR(50),
    city            VARCHAR(100),
    state           VARCHAR(100),
    postal_code     VARCHAR(20),
    region          VARCHAR(50),
    product_id      VARCHAR(20),
    category        VARCHAR(50),
    sub_category    VARCHAR(50),
    product_name    VARCHAR(255),
    sales           DECIMAL(10,2),
    quantity        INT,
    discount        DECIMAL(5,2),
    profit          DECIMAL(10,2)
);