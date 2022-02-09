# FetchRewardsAssessment
# Fetch Rewards Coding Exercise - Data Analyst

# Summary
The analysis was focused on providing a better understanding of the unstructed data and make it readable and understanble for the stakeholders. 
It also includes answers to some of the questions mentioned in the Assessment. 
My goal was to provide answers to the underlining questions regarding the brands, users and receipts of FetchRewards.

I used the following technologies/tools:
- Python for data extraction, cleaning and manipulation 
- Excel for understanding the data better and more cleaning
- SQL for providing the outputs of the questions

# Review unstructured JSON data and diagram a new structured relational data model
#The JSON data provided had enroumus number of special characters like '@' , '$" etc.
#The data was in the form of keyvalue pair
#Coverted the JSON file to Pandas Data frame. Still the data was not clean and hence I used Lamda function to remove the non-useful information 
#The date fields needed conversion and hence I converted them using python function: date_converter()
#Lot of indentation was required to make the date visually understandable
#Once done, the data was extracted in a csv format named: Users2.csv, brands2.csv, receipts3.csv

#New features:
#Converting and separate the column rewardsReceiptItemList to extract BrandCode, Barcode so that foreignkey Constraint can be created

#Next step was to create the ERD diagram for which I used Lucid chart and the diagram can be seen on document named: FetchRewars_ERD
#ERD Diagram 
#Number of Tables : 3
#Name of Tables and Relation 
#Users: Contains data of both staff and consumers
#Brands: Conatins diffrent brand names and information related to the brands
#Receipts: All the data related to purchased brand, prices, rewards and related information

#Relationship:
#user Table and Receipts table has UserID which is used as a primaryKey in Users and ForeignKey in Receipts table
#Brands Tables and Receipts table has BrandCode which is used as a PrimaryKey in Brands and ForeignKey in Receipts table

#All the queries can be found in document named FetchRewards_Queries.sql

# Evaluating Data Quality Issues in the Data Provided
- Data Integrity issue, In the users table the ID should be unique 
- We can split up brandcode and cateogy into seperate table and reference it in the original table through foreign keys if we'd like to normalize it further.
- The data collected has a lot of missing data which makes it complex to fetch the actual output as the results will not be accurate
- The data collected has lot of information which is merged and hence, data extraction and cleaning process takes 80% of the time and effort






