# Crowdfunding_ETL
 Builded an ETL pipeline using Python, Pandas, Python dictionary methods and regular expressions to extract and transform the data. Created four CSV files and use the CSV file data to create an ERD and a table schema. Finally, uploaded the CSV file data into a Postgres database. It involves extracting data from multiple sources, cleaning and transforming the data using Jupyter Notebook with pandas, numpy, and datetime packages, and loading the cleaned data into a relational database using pgAdmin.    



# Extract, Transform and Load the Crowdfunding Data

Hey, let's play with "Crowdfunding" data files and win the Data Science by extracting completely, transforming appropriately and loading in the PgAdmin engine as Postgres database.


![Alt text](Images/1_ETL_Process.png)


### Introduction 

Current trends in the world of economic funding and investment have revealed exponential growth with regard to crowdfunding. Crowdfunding works by taking small sums of capital from a variety of people in order to fund up and coming business ideas and projects. Crowdfunding campaigns have proven to be very successful by raising funds without the upfront fees.


![Alt text](Images/2_crowdfunding_repo_into.jpg)


This ETL process for 'Crowdfunding' data break into two deliverables.

Deliverable 1: Extract & Transform Using Jupyter Notebook.

Deliverable 2: Load the data to Postgres Database.


![Alt text](Images/3_deliverables.png)


# Deliverable 1: Extract & Transform Using Jupyter Notebook


![Alt text](Images/4_deliverable_1.jpg)


### 1.1 Prerequisites

Before you begin, ensure you have the following installed:

- Python 3.6 or higher
- Numpy 
- JSON
- Pandas (for data analysis)





### 1.2 Data Sources


We get the data resources from two files 'crowdfundig.xlsx' and 'contacts.xlsx' using Pandas.


![Alt text](Images/notebook_screens/2_data_sources.png)


### 1.3 Create the Category and Subcategory DataFrames

Extract and transform the crowdfunding.xlsx data to create a 'crowdfunding_info_df' DataFrame.

Split each "category & sub-category" column value into "category" and "subcategory".


To create the category and subcategory identification numbers, use a list comprehension to add the "cat" string or the "subcat" string to each number in the category or the subcategory array, respectively.

Create the category DataFrame as 'category_df' and subcatgeory DataFrame as 'subcategory_df'.


Show the 'category_df' DataFrame with top five rows.


![Alt text](Images/notebook_screens/9_category_df.png)


Show the 'subcategory_df' DataFrame with top five rows.


![Alt text](Images/notebook_screens/10_subcategory_df.png)




### 1.4 Create the Campaign DataFrame


![Alt text](Images/5_campaign.png)


Create a copy of the 'crowdfunding_info_df' to transform the crowdfunding.xlsx data.


Rename the specific columns and sets their appropriate data types for 'campaign_df' DataFrame. 

Convert the 'launched_date' and 'end_date' columns to UTC datetime format.


Drop the unwanted columns for campaign DataFrame.

Confirm the number of columns after dropping in the DataFrame and then export the campaign DataFrame as campaign.csv.




### 1.5 Create the Contacts DataFrame ( Using Python Dictionaries)


![Alt text](Images/6_contacts.jpeg)


Extracting and transforming the data from the 'contacts.xlsx' excel data.

Iterate through the 'contact_info_df' DataFrame to get the data values of all rows in a list.

Create a 'new_contact_info_df' DataFrame for contacts data.

Split each "name" column value into a first and last name, and place each in a new column.

Reorder the columns and Display the new DataFrame i.e. 'new_contact_info_df' with first ten rows.


![Alt text](Images/notebook_screens/20_new_contact_info_df.png)



### 1.6 Create the Contacts DataFrame ( Using Regular Expression)


![Alt text](Images/notebook_screens/22_regex.png)


Extracting and transforming the data from the 'contacts.xlsx' excel data into 'regex_contact_info_df' DataFrame.

Extract the four-digit contact ID number. Extract the "contact_id", "name", and "email" columns by using regular expressions.

Split each "name" column value into a first and a last name, and place each in a new column.

Display the created 'new_regex_contact_info' DataFrame with first ten rows.


![Alt text](Images/notebook_screens/26_regex_df.png)



# Deliverable 2: Load the Data to Postgres Database


![Alt text](Images/DB_screens/postgresql.png)



### 2.1  Prerequisites

- PostgreSQL database
- pgAdmin


### 2.2 Data Modeling


Inspect the four CSV files, and then sketch an Entity Relationship Diagram of the tables. 

To create the sketch, we use a QuickDBD as one of best tool for design ERD.

Here is how the database model prepared.


![Alt text](Images/DB_screens/Crowdfunding_ERD.png)


During the inspection of the data files, we discovered some dependencies between the tables with repect to the columns of data.

We set the 'contact_id' as primary key for 'contacts' table, however in the 'campaign' table this acts as a foreign key as the 'campaing' data is dependent to 'contacts' data. Considering this dependency, we set many to one relationship between them.


Likewise, the 'campaign' table is dependent on the category and subcategory table with 'category_id' and  'subcategory_id' as foreign keys. Considering the unique values the same fields are primary keys in  the 'category' and 'subcategory' table.



### 2.3 Data Engineering

#### Create the Database and Table Schema

Create the 'crowdfunding_db' database in pgAdmin using SQL.


![Alt text](Images/DB_screens/1_create_db.png)


Create a table schema for each of the four CSV files. 

Specify the data types, primary keys, foreign keys, and other constraints.

Create the tables in the correct order to handle the foreign keys.


#### Import Data Files 

we can see how successfully the process for all four files completed.


![Alt text](<Images/DB_screens/2_Import Files.png>)




#### Tables Data

Initially, we wrote the below 'select' queries in order to fetch the data from their respective tables. 


![Alt text](Images/DB_screens/queries.png)



Tables data at a glance: 

Display the results of 'contacts' table for the first 10 rows.


![Alt text](Images/DB_screens/3_contacts_table.png)


Exhibit the results of 'category' table for the first 10 rows.


![Alt text](Images/DB_screens/4_category_table.png)


List the results of 'subcategory' table for the first 10 rows.


![Alt text](Images/DB_screens/5_subcategory_table.png)


Show the results of 'campaign' table for the first 10 rows.


![Alt text](Images/DB_screens/6_campaign_table.png)


## Authors

## [Jalees Moeen GitHub](https://github.com/JaleesMoeen)

## [Maira Syed GitHub](https://github.com/mairasyed)
