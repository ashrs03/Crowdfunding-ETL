# Crowdfunding-ETL

## Purpose 

This is crowdfunding ETL project and the SQL data analysis for Independent Funding.
Independent Funding is a crowdfunding platform for funding independent projects and they have tasked us to the data from single file onto a PostgreSQL database. Steps to do so involved:
Extract: Extracting the large excel file data 
Transform: Transform the data as per specifications into csv files
Use ERD to create postgres SQL database and tables ( import tables) 
Perform SQL queries to create new tables for reporting purpose/ to email stakeholders.

## Analysis 
Initial Analysis steps are summarized below

1. Extraction of crowdfunding data importing the crowdfunding.xls
2. Data transformation and cleaning 
3. Creation of category and subcategory dataFrames and transform as directed 
4. Export the files as csv files 
5. Creation of campaign dataframe, transformation with cleaning of data
6. Export of campaign csv file
7. Creation of contacts dataFrame, transformation, and export of contacts csv file

Following code walks through above steps:

https://github.com/ashrs03/Crowdfunding-ETL/blob/main/Crowdfunding.ipynb

**Analysis additions were**

1. Extract or import backer_info.csv, transform and clean the data as per specifications

The code that walks through the extraction, transformation and the export of the backers csv file is 

https://github.com/ashrs03/Crowdfunding-ETL/blob/main/Extract-Transform_final_code.ipynb

Outcome of the extractions, transformations, cleaning and export of files includes following csv files
- contacts.csv
- category.csv
- subcategory.csv
- capaign.csv
- backers.csv

**Entitry Relationship Diagram and table schema**
we started by creating an Entity Relationship Diagram (ERD) using Quick DBD website (https://www.quickdatabasediagrams.com/).
ERD is required to define columns in pgadmin within database so that the tables created can be imported. 
ERD is saved as crowdfunding_db_relationships.png and the database schema as a PostgreSQL file named crowdfunding_db_schema.sql

![image](https://user-images.githubusercontent.com/42523379/211251835-c16e5bc7-87ec-4efc-94d5-dc93659c8d86.png)

**SQL analysis**
To answer specific stakeholder questions 2 queries were performed and below images summarizes the query and tables 

![image](https://user-images.githubusercontent.com/42523379/211252516-7529c017-351a-4ad0-8022-ad0d1780a30e.png)

![image](https://user-images.githubusercontent.com/42523379/211252567-e0380d94-2020-470c-9e68-e30ef2c3673c.png)

## Summary
Extract, transform, load is useful tool to get raw data, to extract and transform ( such as by adding dataframe for each row and also to store data in clean format before this is exported/ consumed. The data can be imported into any database and one way to further manipulate this data/ to query it to create new tables as per reporting needs is to use pgadmin sql queries. 
