*** Settings ***
Library                 Selenium2Library
Resource                ../../Resources/resource.robot
Resource                ../../Resources/login.robot
Resource                ../../Resources/res-dashboard-users.robot
Suite Setup             Open Browser to Login Page

*** Test Cases ***
Go to the Dashboard Users
    Go to the Dashboard Users

Verify Dashboard Users Displayed Properly
    Verify Filter by Department is Available
    Verify Filter by User is Available
    Delay

Verify Filter by Department is successful
    Filter by Department
    #Verify Select Department is Successful

Verify Filter by User is successful
    Filter by User
    #Verify Select User is Successful

Verify Filter by "Last Week" is successful
    Filter by Last Week
    Verify Select "Last Week" is Successful

Verify Filter by "Last 7 Days" is successful
    Filter by Last 7 Days
    Verify Select "Last 7 Days" is Successful

Verify Filter by "Last 28 Days" is successful
    Filter by Last 28 Days
    Verify Select "Last 28 Days" is Successful

Verify Filter by "Last 30 Days" is successful
    Filter by Last 30 Days
    Verify Select "Last 30 Days" is Successful

Verify Filter by "Last 90 Days" is successful
    Filter by Last 90 Days
    Verify Select "Last 90 Days" is Successful

Verify Filter by "Last 6 Months" is successful
    Filter by Last 6 Months
    Verify Select "Last 6 Months" is Successful

Verify Filter by "Last 12 Months" is successful
    Filter by Last 12 Months
    Verify Select "Last 12 Months" is Successful

Verify Filter by "Last Year" is successful
    Filter by Last Year
    Verify Select "Last Year" is Successful

Verify Filter by "Month to Date" is successful
    Filter by Month to Date
    Verify Select "Month to Date" is Successful

Verify Filter by "Custom Periods" is successful
    Filter by Custom Periods
    Verify Select "Custom" is Successful
    Select Start Date
    Select End Date

Verify Report Done (Scheduled) is Displayed
    Verify Report Done (Scheduled) is Displayed

Verify Time Invested (Scheduled) is Displayed
    Verify Time Invested (Scheduled) is Displayed

Verify Report Done (Ad-Hoc) is Displayed
    Verify Report Done (Ad-Hoc) is Displayed

Verify Time Invested (Ad-Hoc) is Displayed
    Verify Time Invested (Ad-Hoc) is Displayed

Verify "Top User by Completion" is Displayed
    Verify "Top User by Completion" is Displayed



*** Keywords ***

#Test Case Templates
Verify Dashboard Users Displayed Properly
    Verify Filter by Department is Available
    Verify Filter by User is Available
    Delay

Verify Filter by Department is successful
    Verify Dashboard Users Displayed Properly
    Filter by Department
    Verify Select Department is Successful

Verify Filter by User is successful
    Verify Dashboard Users Displayed Properly
    Filter by Department
    Verify Select Department is Successful
    Filter by User
    Verify Select User is Successful


Verify Filter by "Last Week" is successful
    Verify Dashboard Users Displayed Properly
    Filter by Department
    Verify Select Department is Successful
    Filter by Last Week
    Verify Select "Last Week" is Successful

Verify Filter by "Last 7 Days" is successful
    Verify Dashboard Users Displayed Properly
    Filter by Department
    Verify Select Department is Successful
    Filter by Last 7 Days
    Verify Select "Last 7 Days" is Successful

Verify Filter by "Last 28 Days" is successful
    Verify Dashboard Users Displayed Properly
    Filter by Department
    Verify Select Department is Successful
    Filter by Last 28 Days
    Verify Select "Last 28 Days" is Successful

Verify Filter by "Last 30 Days" is successful
    Verify Dashboard Users Displayed Properly
    Filter by Department
    Verify Select Department is Successful
    Filter by Last 30 Days
    Verify Select "Last 30 Days" is Successful

Verify Filter by "Last 90 Days" is successful
    Verify Dashboard Users Displayed Properly
    Filter by Department
    Verify Select Department is Successful
    Filter by Last 90 Days
    Verify Select "Last 90 Days" is Successful

Verify Filter by "Last 6 Months" is successful
    Verify Dashboard Users Displayed Properly
    Filter by Department
    Verify Select Department is Successful
    Filter by Last 6 Months
    Verify Select "Last 6 Months" is Successful

Verify Filter by "Last 12 Months" is successful
    Verify Dashboard Users Displayed Properly
    Filter by Department
    Verify Select Department is Successful
    Filter by Last 12 Months
    Verify Select "Last 12 Months" is Successful

Verify Filter by "Last Year" is successful
    Verify Dashboard Users Displayed Properly
    Filter by Department
    Verify Select Department is Successful
    Filter by Last Year
    Verify Select "Last Year" is Successful

Verify Filter by "Month to Date" is successful
    Verify Dashboard Users Displayed Properly
    Filter by Department
    Verify Select Department is Successful
    Filter by Month to Date
    Verify Select "Month to Date" is Successful

Verify Filter by "Custom Periods" is successful
    Verify Dashboard Users Displayed Properly
    Filter by Department
    Verify Select Department is Successful
    Filter by Custom Periods
    Verify Select "Custom" is Successful
    Select Start Date
    Select End Date

Verify Download csv is Successful
    Verify Dashboard Users Displayed Properly
    Filter by Department
    Verify Select Department is Successful
    Verify Select "Last 6 Months" is Successful
    Click Download csv

