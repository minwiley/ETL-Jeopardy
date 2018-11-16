# ETL-Jeopardy
<img width="317" alt="jeopardy" src="https://user-images.githubusercontent.com/41865917/48578392-7bfbf780-e8e7-11e8-99a4-b7ff756aa8f3.PNG">

Guidelines for ETL Project

Finding Data
Your project must use 2 or more sources of data. We recommend the following sites to use as sources of data:
data.world
Kaggle

Data Cleanup & Analysis

Once you have identified your datasets, perform ETL on the data. Make sure to plan and document the following:

The sources of data that you will extract from.
The type of transformation needed for this data (cleaning, joining, filtering, aggregating, etc).
The type of final production database to load the data into (relational or non-relational).
The final tables or collections that will be used in the production database.

You will be required to submit a final technical report with the above information and steps required to reproduce your ETL process.


<img width="349" alt="population" src="https://user-images.githubusercontent.com/41865917/48578458-ac439600-e8e7-11e8-8dc4-97f96a03fe82.PNG">


<img width="346" alt="ted" src="https://user-images.githubusercontent.com/41865917/48578462-af3e8680-e8e7-11e8-91f0-b8625550a83a.PNG">



Project Report
At the end of the week, your team will submit a Final Report that describes the following:

Extract: your original data sources and how the data was formatted (CSV, JSON, MySQL, etc).
Transform: what data cleaning or transformation was required.
Load: the final database, tables/collections, and why this was chosen.


<img width="258" alt="mustache" src="https://user-images.githubusercontent.com/41865917/48578411-8ae2aa00-e8e7-11e8-9ad8-b8ec0575e93b.PNG"> <img width="249" alt="no mustache" src="https://user-images.githubusercontent.com/41865917/48578436-9cc44d00-e8e7-11e8-8480-78ba0caf29de.PNG">



<br>
<br>
<br>


## Jeopardy versus the World… or just other random factors
## Extract, Transform, Load (ETL) Project
<br>
<br>
### GW Data Analytics and Data Visualization Boot Camp, Instructor: Dan Wood
### Author: Melinda Wiley
### 15 November 2018
<br>
<br>
Task is to identify several datasets, transform identified sets, and load them into a database. The initial datasets and primary focus of this project was based around Jeopardy Questions and Answer datasets; Jeopardy Questions and Answers during the reign of Alex Trebek (1984 – 2018). Is there any correlation between Jeopardy categories, questions, and/or answers and facial hair, divorce rate, marriage rate, leading cause of death, world population, or Ted Talks? Unlikely but let’s check.
<br>
<br>
Extraction:
Searched dataset focused sites for information along with google searches to find additional supporting documentation that I would be able to manipulate/transform. In this, the realization that without a strong project idea and foundation, scope creep, project deviation, and project wander can derail a short deadline project. 
Datasets from extraction for transformation are the following: 2x jeopardy, 1x facial hair, 2x marriage and divorce rates, 2x population growth, 1x Ted Talks. Primary grouping category will be time. 
Sources:
1.	Jeopardy questions and answers dataset 1, jeopardy_1.csv, https://data.world/sya/200000-jeopardy-questions 
2.	Jeopardy questions and answers dataset 2, jeopardy_2.csv, https://www.kaggle.com/sanzgiri/jeopardy-questions 
3.	Facial hair over the years, University_Graduate_Facial_Hair_Styles.xlm, https://www.reddit.com/r/dataisbeautiful/comments/64q73v/university_graduate_facial_hair_styles_18982008_oc/dg44iay/?st=joivc1il&sh=9fb47495 
4.	Divorce rate and marriage rate, national_marriage_divorce_rates_00-16.xlm, https://www.cdc.gov/nchs/nvss/marriage-divorce.htm 
5.	Populations Growth, WPP2017_POP_F01_1_TOTAL_POPULATION_BOTH_SEXES.xlm, https://population.un.org/wpp/Download/Standard/Population/ 
6.	Additionally scraped for projected population growth from http://www.worldometers.info/world-population/world-population-projections/ 
7.	Ted Talks, TED_Talks_by_ID_plus-transcripts-and-LIWC-and-MFT-plus-views.csv, https://data.world/owentemple/ted-talks-complete-list 
<br>
Transform:
Data cleaning and transformation. All data was read into a jupyter notebook. Data was formatted in .xlm, .csv, and table from a website.

I found two Jeopardy datasets in .csv. Data for Jeopardy was very limited or more difficult to find than initially expected. Renamed and dropped columns in both datasets to match each other. Jeopardy_1 was the larger dataset. Jeopardy_2 was merged into Jeopardy_1 for its Jeopardy/Double Jeopardy data with a left join creating completed_jeopardy.

Facial Hair data (1899-2008) was converted from excel to csv. Alex Trebek shaved off his iconic mustache in 2001. He grew it back in 2014 and grew a beard in 2018. Unfortunately, the facial hair dataset only runs to 2008. 

Marriage and Divorce rates data (2000-2016) was implemented in excel since the sets were very small and was converted to a csv from an excel. 

World Population data comes from two data sources in excel. Set1 date range 1950-2015, set2 2018-2100. Columns were renamed and dropped to match each other then sets were merged by concatenation and create a mega csv. 

Ted Talks renamed year filmed to Year. 
<br>
Loaded:
Cleaned collections were loaded into a MongoDB final database. 
NoSQL, non-relational database was chosen for the easy of handling large volume semi-structured data. Additionally, MongoDB versatility. Lastly, I needed the practice working with a NoSQL db. 

The type of final production database to load the data into (relational or non-relational).
The final tables or collections that will be used in the production database.

Jeopardy is just a syndicated game show. No correlations were found and it can be determined that Jeopardy is not a major trend decision maker ….but not sure about Ted Talks. 
