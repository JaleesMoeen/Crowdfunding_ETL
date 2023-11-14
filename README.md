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


![Alt text](Images/notebook_screens/1_libraries.png)


### 1.2 Data Sources


We get the data resources from two files 'crowdfundig.xlsx' and 'contacts.xlsx' using Pandas.


![Alt text](Images/notebook_screens/2_data_sources.png)


### 1.3 Create the Category and Subcategory DataFrames

Extract and transform the crowdfunding.xlsx data to create a 'crowdfunding_info_df' DataFrame.


![Alt text](Images/notebook_screens/3_extract_crowdfunding.png)


Check the columns names to confirms before splitting the values.


![Alt text](Images/notebook_screens/4_crowdfunding_column_names.png)


Split each "category & sub-category" column value into "category" and "subcategory"


![Alt text](Images/notebook_screens/5_split_columns.png)


Review to check the names and confirm how much categories and subcategories exists.


![Alt text](Images/notebook_screens/6_categories_subcategories.png)



To create the category and subcategory identification numbers, use a list comprehension to add the "cat" string or the "subcat" string to each number in the category or the subcategory array, respectively.


![Alt text](Images/notebook_screens/7_list_comprehensions.png)



Create the category DataFrame as 'category_df' and subcatgeory DataFrame as 'subcategory_df'.


![Alt text](Images/notebook_screens/8_dfs.png)


Show the 'category_df' DataFrame with top five rows.


![Alt text](Images/notebook_screens/9_category_df.png)


Show the 'subcategory_df' DataFrame with top five rows.


![Alt text](Images/notebook_screens/10_subcategory_df.png)



Export the category DataFrame as category.csv and the subcategory DataFrame as subcategory.csv.


![Alt text](Images/notebook_screens/11_export_dfs.png)



### 1.4 Create the Campaign DataFrame


![Alt text](Images/5_campaign.png)


Create a copy of the 'crowdfunding_info_df' to transform the crowdfunding.xlsx data.


![Alt text](Images/notebook_screens/12_campaign_df.png)


Rename the specific columns and sets their appropriate data types for 'campaign_df' DataFrame. 

Convert the 'launched_date' and 'end_date' columns to UTC datetime format.


![Alt text](Images/notebook_screens/13_datatime.png)


Drop the unwanted columns for campaign DataFrame.


![Alt text](Images/notebook_screens/14_drop_columns.png)


Confirm the number of columns after dropping in the DataFrame and then export the campaign DataFrame as campaign.csv.


![Alt text](Images/notebook_screens/15_export_campaign_df.png)


### 1.5 Create the Contacts DataFrame ( Using Python Dictionaries)


![Alt text](Images/6_contacts.jpeg)


Extracting and transforming the data from the 'contacts.xlsx' excel data.


![Alt text](Images/notebook_screens/16_contacts_info_df.png)


Iterate through the 'contact_info_df' DataFrame to get the data values of all rows in a list.


![Alt text](Images/notebook_screens/17_list_comprehension.png)


Create a 'new_contact_info_df' DataFrame for contacts data.


![Alt text](Images/notebook_screens/18_news_contacts_df.png)


Split each "name" column value into a first and last name, and place each in a new column.


![Alt text](Images/notebook_screens/19_split_columns.png)


Reorder the columns and Display the new DataFrame i.e. 'new_contact_info_df' with first ten rows.


![Alt text](Images/notebook_screens/20_new_contact_info_df.png)


Export the 'new_contact_info_df' DataFrame as contacts.csv.


![Alt text](Images/notebook_screens/21_export_contacts_df.png)



### 1.6 Create the Contacts DataFrame ( Using Regular Expression)


![Alt text](Images/notebook_screens/22_regex.png)


Extracting and transforming the data from the 'contacts.xlsx' excel data into 'regex_contact_info_df' DataFrame.


Extract the four-digit contact ID number. Extract the "contact_id", "name", and "email" columns by using regular expressions.


![Alt text](Images/notebook_screens/23_extract_id.png)



![Alt text](Images/notebook_screens/24_extract_name.png)



![Alt text](Images/notebook_screens/25_extract_email.png)



Create a new copy of the 'regex_contact_info_df' with the 'contact_id', 'name', 'email' columns.

Split each "name" column value into a first and a last name, and place each in a new column.

Display the created 'new_regex_contact_info' DataFrame with first ten rows.


![Alt text](Images/notebook_screens/26_regex_df.png)


Export the 'new_regex_contact_info' DataFrame as regex_contacts.csv


![Alt text](Images/notebook_screens/27_export_regex_df.png)


## Author

## [Jalees Moeen GitHub](https://github.com/JaleesMoeen)

## [Maira Syed GitHub](https://github.com/mairasyed)
