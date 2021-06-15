*** Settings ***
Library                 Selenium2Library
Resource                ../../Resources/resource.robot
Resource                ../../Resources/login.robot
Resource                ../../Resources/res-dashboard-overview.robot
Suite Setup             Open Browser to Login Page

*** Test Cases ***
Go to the Dashboard Overview
    Go to the Dashboard Overview

Verify Filter by Department is Available
    Verify Filter by Department is Available

Verify Filter by Sites is Available
    Verify Filter by Sites is Available

Verify Filter by Period is Available
    Verify Filter by Period is Available

Filter by Dept, Sites & Periods
    Verify Filter by Department & Sites Successfully
    #Verify Filter by Department, Sites, and Last Week Successfully
    Verify Filter by Department, Sites, and Last 7 Days Successfully
    Verify Ad-Hoc Overview Report is displayed
    Click Scheduled Button
    Verify Filter by Department, Sites, and Last 28 Days Successfully
    Verify Filter by Department, Sites, and Last 30 Days Successfully
    Verify Filter by Department, Sites, and Last 90 Days Successfully
    Verify Filter by Department, Sites, and Last 6 Months Successfully
    Verify Filter by Department, Sites, and Last 12 Months Successfully
    Verify Filter by Department, Sites, and Last Year Successfully
    Verify Filter by Department, Sites, and Month to Date Successfully
    Verify Filter by Department, Sites, and Custom Periods Successfully







*** Keywords ***
Verify Filter by Department & Sites Successfully
    Delay
    Click Ad-Hoc Button
    Filter by Department
    Filter by Sites
Verify Filter by Department, Sites, and Last Week Successfully
    Filter by Last Week
    Delay
Verify Filter by Department, Sites, and Last 7 Days Successfully
    Filter by Last 7 Days
    Delay
Verify Filter by Department, Sites, and Last 28 Days Successfully
    Filter by Last 28 Days
    Delay
Verify Filter by Department, Sites, and Last 30 Days Successfully
    Filter by Last 30 Days
    Delay
Verify Filter by Department, Sites, and Last 90 Days Successfully
    Filter by Last 90 Days
    Delay
Verify Filter by Department, Sites, and Last 6 Months Successfully
    Filter by Last 6 Months
    Delay
Verify Filter by Department, Sites, and Last 12 Months Successfully
    Filter by Last 12 Months
    Delay
Verify Filter by Department, Sites, and Last Year Successfully
    Filter by Last Year
    Delay
Verify Filter by Department, Sites, and Month to Date Successfully
    Filter by Month to Date
    Delay
Verify Filter by Department, Sites, and Custom Periods Successfully
    Filter by Custom Periods
    Select Start Date
    Select End Date
    Delay

Verify Ad-Hoc Overview Report is displayed
    Click Ad-Hoc Button
    Verify Adhoc Chart is displayed





    
