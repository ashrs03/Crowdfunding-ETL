# Crowdfunding-ETL

## Purpose 

This is crowdfunding ETL project and the SQL data analysis for Independent Funding.
Independent Funding is a crowdfunding platform for funding independent projects and they have tasked us to the data from single file onto a PostgreSQL database. Steps to do so involved:
Extract: Extracting the large excel file data 
Transform: Transform the data as per specifications into csv files
Use ERD to create postgres SQL database and tables ( import tables) 
Perform SQL queries to create new tables for reporting purpose/ to email stakeholders.

## Analysis 
Analysis steps are summarized below 
1. Extraction of crowdfunding data importing the crowdfunding.xls
2. Data transformation and cleaning 
3. Creation of category and subcategory dataFrames and transform as directed 
4. Export the files as csv files 
5. Creation of campaign dataframe, transformation with cleaning of data
6. Export of campaign csv file
7. Creation of contacts dataFrame, transformation, and export of contacts csv file

Following code walks through above steps:

https://github.com/ashrs03/Crowdfunding-ETL/blob/main/Crowdfunding.ipynb

Analysis additions were
1. Extract or import backer_info.csv, transform and clean the data as per specifications

The code that walks through the extraction, transformation and the export of the backers csv file is 

https://github.com/ashrs03/Crowdfunding-ETL/blob/main/Extract-Transform_final_code.ipynb





## Summary
