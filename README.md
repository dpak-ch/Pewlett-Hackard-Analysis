# Employee Database Analysis

## Contents
- [Overview of the Project](#overview)
- [Files](#files)
- [Results](#data-analysis-results)
- [Summary](#summary)

## Overview
The purpose of the analysis is to help Bobby determine the number of retiring employees by title and identify those that are eligible to participate in a mentorship program. The primary objective is to help the company prepare for a wave of retirements and ensure that the younger generation of employees have enough mentors. PostgreSQL was used to link the multiple tables and query required data for analysis.

## Files
- Queries/Employee_Database_Challenge.sql  - Contains all queries used in the challenge
- retirement_titles.csv - Output with retiring employees by title
- unique_titles.csv - Filtering retirement_titles.csv only for unique instances 
- retiring_titles.csv - Count of retirees by title
- mentorship_eligibility.csv - List of employees eligible for mentorship program
- mentorship_wide.csv - Wider search criteria results for available mentors

## Data Analysis Results

Below are some key insights that can be garnered from the analysis:

1. A staggering 30% of the company are retiring in close proximity to each other which would create a significant hole in the company's experienced staff
2. ~95% of the retirees are technical staff, which would leave the managers with teams lacking critical technical insight
3. Only ~1550 employees are eligible for the mentorship program to train over 90,000 inexperienced employees (assuming the company would replace every retiree)
4. Not every eligible employee may be willing to participate in the mentorship program, causing further issues in training new employees


## Summary
1. How many roles will need to be filled as the "silver tsunami" begins to make an impact?
There are ~90,000 retiring employees that would need to be replaced assuming the company decides to keep the workforce count constant.

2. Are there enough qualified, retirement-ready employees in the departments to mentor the next generation of Pewlett Hackard employees?
Assuming that the company is to replace every retiring employee, there are ~60 mentees for every available mentor (for the assumed mentorship eligibility criteria). Even if everyone eligible for the mentorship program are willing to mentor the next generation of employees, the mentor-mentee ratio is too low. 

3. The criteria established in the challenge for mentorship eligibility is a bit confusing. If the retireea are employees born between 1952 and 1955, there is no real reason for the mentorship eligibility criteria to be so narrow. Modifying the birth_date critertion to everbody born between 1956 and 1965, there are over 167,000 employees avialble for mentorship. The query used to arrive at this number is shown below:

![Mentorship](Data/query_Mentorship_Wide.png)

Grouping the eligible employees by title, it can be seen that there are enough employees in every title group available for mentorship. 

![Mentors by Title](Data/Mentors_BY_Title.png)

