-- Created by Vertabelo (http://vertabelo.com)
-- Last modification date: 2022-04-14 17:58:36.281

-- tables
-- Table: CustomerInfo
CREATE TABLE CustomerInfo (
    cust_id int  NOT NULL,
    cust_name varchar(30)  NOT NULL,
    cust_number varchar(30)  NOT NULL,
    cust_address varchar(50)  NOT NULL,
    CONSTRAINT CustomerInfo_pk PRIMARY KEY  (cust_id)
);

-- Table: IncomeInfo
CREATE TABLE IncomeInfo (
    user_id int  NOT NULL,
    product_id int  NOT NULL,
    price int  NOT NULL,
    quantity int  NOT NULL,
    tax int  NOT NULL,
    total_price int  NOT NULL,
    date timestamp  NOT NULL,
    CONSTRAINT IncomeInfo_pk PRIMARY KEY  (user_id)
);

-- Table: ProductInfo
CREATE TABLE ProductInfo (
    product_id int  NOT NULL,
    product_name varchar(30)  NOT NULL,
    product_price int  NOT NULL,
    CONSTRAINT ProductInfo_pk PRIMARY KEY  (product_id)
);

-- Table: drop table TransactionInfo
CREATE TABLE TransactionInfo (
    user_id int  NOT NULL,
    customer_id int  NOT NULL,
    product_id int  NOT NULL,
    customer_name varchar(30)  NOT NULL,
    product varchar(30)  NOT NULL,
    price int  NOT NULL,
    quantity int  NOT NULL,
    tax int  NOT NULL,
    total_price int  NOT NULL,
    amount_tendered int  NOT NULL,
    change int  NOT NULL,
    net int  NOT NULL,
    date datetime  NOT NULL default getdate(),
    CONSTRAINT TransactionInfo_pk PRIMARY KEY  (user_id)
);

-- Table: UserInfo
CREATE TABLE UserInfo (
    user_id int  NOT NULL,
    username varchar(30)  NOT NULL,
    password varchar(30)  NOT NULL,
    firstname varchar(30)  NOT NULL,
    lastname varchar(30)  NOT NULL,
    gender varchar(30)  NOT NULL,
    contact varchar(30)  NOT NULL,
    address varchar(50)  NOT NULL,
    date timestamp  NOT NULL,
    CONSTRAINT UserInfo_pk PRIMARY KEY  (user_id)
);

-- End of file.

