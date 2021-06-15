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

Verify Report Tab Displayed Properly
    Verify Filter by Department is Available
    Verify Filter by Sites is Available
    Verify Filter by Period is Available
    Filter by Last 6 Months
    Verify Select "Last 6 Months" is Successful
    Click Report Tab
    Verify Option Icon is Available

Download Site Report Completion
    Click Download csv


*** Keywords ***
Verify Report Tab Displayed Properly
    Verify Filter by Department is Available
    Verify Filter by Sites is Available
    Verify Filter by Period is Available
    Filter by Last 6 Months
    Verify Select "Last 6 Months" is Successful
    Click Report Tab
    Verify Option Icon is Available

Download Site Report Completion
    Click Download csv