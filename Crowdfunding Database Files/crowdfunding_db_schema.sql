-- Exported from QuickDBD: https://www.quickdatabasediagrams.com/
-- NOTE! If you have used non-SQL datatypes in your design, you will have to change these here.


-- Setup the tables schema for crowdfunding_db


-- drop tables if exist

drop table if exists contacts;
drop table if exists category;
drop table if exists dsubcategory;
drop table if exists campaign;



-- Create tables for crowdfunding_db
-- Set the primary keys

CREATE TABLE contacts (
    contact_id int   NOT NULL,
    first_name varchar(50)   NOT NULL,
    last_name varchar(50)   NOT NULL,
    email varchar(50)   NOT NULL,
    CONSTRAINT pk_contacts PRIMARY KEY (
        contact_id
     )
);

CREATE TABLE category (
    category_id varchar(4)   NOT NULL,
    category varchar(20)   NOT NULL,
    CONSTRAINT pk_category PRIMARY KEY (
        category_id
     )
);

CREATE TABLE subcategory (
    subcategory_id varchar(8)   NOT NULL,
    sabcategory varchar(20)   NOT NULL,
    CONSTRAINT pk_subcategory PRIMARY KEY (
        subcategory_id
     )
);

CREATE TABLE campaign (
    cf_id int   NOT NULL,
    contact_id int   NOT NULL,
    company_name varchar(50)   NOT NULL,
    description varchar(100)   NOT NULL,
    goal float   NOT NULL,
    pledged float   NOT NULL,
    outcome varchar(30)   NOT NULL,
    backers_count int   NOT NULL,
    country varchar(20)   NOT NULL,
    currency varchar(20)   NOT NULL,
    launch_date date   NOT NULL,
    end_date date   NOT NULL,
    category_id varchar(4)   NOT NULL,
    subcategory_id varchar(8)   NOT NULL,
    CONSTRAINT pk_campaign PRIMARY KEY (
        cf_id
     )
);



-- Set the Foreign Keys 
-- Develop the suitable relationships among all table entities.

ALTER TABLE campaign ADD CONSTRAINT fk_campaign_contact_id FOREIGN KEY(contact_id)
REFERENCES contacts (contact_id);

ALTER TABLE campaign ADD CONSTRAINT fk_campaign_category_id FOREIGN KEY(category_id)
REFERENCES category (category_id);

ALTER TABLE campaign ADD CONSTRAINT fk_campaign_subcategory_id FOREIGN KEY(subcategory_id)
REFERENCES subcategory (subcategory_id);


