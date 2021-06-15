*** Settings ***
Library                 Selenium2Library
Resource                ../../Resources/resource.robot
Resource                ../../Resources/login.robot
Resource                ../../Resources/res-dashboard-sites.robot
Suite Setup             Open Browser to Login Page
Suite Teardown          Close Browser

*** Test Cases ***
Go to the Dashboard Sites
    Go to the Dashboard Sites
    Verify Filter by Department is Available
    Verify Filter by Sites is Available
    Verify Filter by Period is Available

Verify "View by" is Successfully
    Verify View by Green Flag is Successful
    Verify View by Yellow Flag is Successful
    Verify View by Red Flag is Successful

Verify Download "Top Site by Score" is Successfully
    Download Top Site by Score



*** Keywords ***
Verify View by Green Flag is Successful
    Filter by Last 6 Months
    Verify Select "Last 6 Months" is Successful
    Click View By Green
    Verify Select Green Flag is Successful

Verify View by Yellow Flag is Successful
    Click View By Yellow
    Verify Select Yellow Flag is Successful

Verify View by Red Flag is Successful
    Click View By Red
    Verify Select Red Flag is Successful

Download Top Site by Score
    #Go to the Dashboard Sites
    #Verify Filter by Department is Available
    #Verify Filter by Sites is Available
    #Verify Filter by Period is Available
    #Filter by Department
    #Filter by Sites
    #Filter by Last 6 Months
    #Verify Select "Last 6 Months" is Successful
    Click Download csv
