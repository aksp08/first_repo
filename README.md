# Instragram User Analytics

**Project Overview**

In this project, I used SQL to analyze an Instagram-clone relational database. By querying the dataset, meaningful insights were extracted to help the management team make informed decisions regarding user engagement, marketing strategy, and potential platform risks.

User analysis involves tracking how users engage with a digital product such as a social media platform. The insights derived from such analysis help different teams within the organization:

1. Marketing team – design campaigns to increase engagement

2. Product team – identify features that improve user experience

3. Development team – optimize the platform based on usage patterns

4. Investors – evaluate platform growth and sustainability

**Problem Statement**

In this project, SQL is used to analyze an Instagram-clone relational database. By querying the dataset, meaningful insights are extracted to help the management team make informed decisions regarding user engagement, marketing strategy, and potential platform risks.

**Tools Used**

MySQL, MySQL Workbench, Microsoft Excel (for exporting query outputs)

SQL Skills Applied:

Joins (INNER JOIN, LEFT JOIN)
Aggregations (COUNT, ROUND)
Subqueries
GROUP BY and HAVING
Date functions (DAYNAME)
Data filtering (WHERE)
Analytical problem solving with SQL


**Approach**

The analysis was conducted using a structured analytical approach:

1. Understanding the Dataset

The first step involved studying the schema and identifying relationships between tables such as users, photos, likes, and hashtags.

2. Translating Business Questions into SQL

Each business requirement from the management team was translated into a structured SQL query. The queries were categorized into two groups:


**A-Marketing Analysis**

a. Identifying loyal users

b. Detecting inactive users

c. Finding top-performing content

d. Discovering popular hashtags

e. Analyzing user registration trends


**B-Investor Metrics**

a. Measuring overall user engagement

b. Detecting suspicious activity such as potential bot accounts


3. Query Development

SQL queries were written using joins, aggregations, and subqueries to extract insights from the relational dataset.

4. Validation & Interpretation

Query outputs were exported and interpreted to derive meaningful insights that could inform business decisions.

This approach ensured that the analysis moved beyond simply writing SQL queries and focused on extracting actionable business insights.


**Key Insights**

The platform contains 283 users and 257 photos.

36 users (9.19%) have never posted a photo, indicating a small inactive segment.

The most liked photo received 48 likes, highlighting strong engagement with certain content.

The top 5 hashtags were used 59, 42, 39, 38, and 24 times, suggesting specific trending themes.

User registrations peaked on Thursday and Sunday, each with 16 registrations.

13 users liked all 257 photos, indicating extremely high engagement or possible automated activity.


**Output**


 Through SQL analysis, the project successfully:

a. Identified loyal early adopters of the platform

b. Quantified inactive users and engagement levels

c. Determined high-performing content through like analysis

d. Identified trending hashtags for marketing opportunities

e. Discovered optimal days for marketing campaign launches

f. Detected potential bot accounts interacting with all platform content

The results demonstrate how structured SQL queries can transform relational data into actionable insights.


**Business Recommendations**


Based on the findings:

1. Re-engage Inactive Users

Target the 9% inactive users with email campaigns or product notifications encouraging them to post content.

2. Optimize Marketing Campaign Timing

Launch promotional campaigns around Thursday and Sunday, when new user registrations peak.

3. Leverage Trending Hashtags

Brands and influencers should use the top hashtags identified in this analysis to maximize reach.

4. Monitor Highly Active Accounts

Accounts interacting with 100% of content should be monitored for potential bot behavior.

5. Reward Loyal Users

Early adopters (oldest users) can be targeted for loyalty rewards or beta feature testing.
