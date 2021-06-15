*** Settings ***
Library                 Selenium2Library
Resource                ../../Resources/resource.robot
Resource                ../../Resources/login.robot
Resource                ../../Resources/res-dashboard-sites.robot
Suite Setup             Open Browser to Login Page
Suite Teardown          Close Browser

*** Test Cases ***
Verify Open Dashboard Sites Successfully
    Go to the Dashboard Sites

Verify Sites Tab Displayed Properly
    Verify Sites Tab Displayed Properly

Verify Filter Features Working Properly
    Verify Filter by Department is successful
    Verify Filter by Sites is successfully
    #Verify Filter by "Last Week" is successful
    Verify Filter by "Last 7 Days" is successful
    Verify Filter by "Last 28 Days" is successful
    Verify Filter by "Last 30 Days" is successful
    Verify Filter by "Last 90 Days" is successful
    Verify Filter by "Last 6 Months" is successful
    Verify Filter by "Last 12 Months" is successful
    Verify Filter by "Last Year" is successful
    Verify Filter by "Month to Date" is successful
    Verify Filter by "Custom Periods" is successful




*** Keywords ***
Verify Sites Tab Displayed Properly
    Verify Filter by Department is Available
    Verify Filter by Sites is Available
    Verify Filter by Period is Available


Verify Filter by Department is successful
    Filter by Department
    #Verify Select Department is Successful

Verify Filter by Sites is successfully
    Filter by Sites
    Verify Select Site is Successful
    Delay
Verify Filter by "Last Week" is successful
    Filter by Last Week
    Verify Select "Last Week" is Successful
    Delay
Verify Filter by "Last 7 Days" is successful
    Filter by Last 7 Days
    Verify Select "Last 7 Days" is Successful
    Delay
Verify Filter by "Last 28 Days" is successful
    Filter by Last 28 Days
    Verify Select "Last 28 Days" is Successful
    Delay
Verify Filter by "Last 30 Days" is successful
    Filter by Last 30 Days
    Verify Select "Last 30 Days" is Successful
    Delay
Verify Filter by "Last 90 Days" is successful
    Filter by Last 90 Days
    Verify Select "Last 90 Days" is Successful
    Delay
Verify Filter by "Last 6 Months" is successful
    Filter by Last 6 Months
    Verify Select "Last 6 Months" is Successful
    Delay
Verify Filter by "Last 12 Months" is successful
    Filter by Last 12 Months
    Verify Select "Last 12 Months" is Successful
    Delay
Verify Filter by "Last Year" is successful
    Filter by Last Year
    Verify Select "Last Year" is Successful
    Delay
Verify Filter by "Month to Date" is successful
    Filter by Month to Date
    Verify Select "Month to Date" is Successful
    Delay
Verify Filter by "Custom Periods" is successful
    Filter by Custom Periods
    Verify Select "Custom" is Successful
    Delay



    



