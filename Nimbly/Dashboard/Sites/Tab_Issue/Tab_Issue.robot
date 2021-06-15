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

Verify Issue Tab Displayed Properly
    Filter by Last 6 Months
    Verify Select "Last 6 Months" is Successful
    Click Issue Report
    Verify Tabel Displayed Properly

Download Site Issue Completion
    Click Download csv




*** Keywords ***
Verify Issue Tab Displayed Properly
    Filter by Last 6 Months
    Verify Select "Last 6 Months" is Successful
    Click Issue Report
    Verify Tabel Displayed Properly

Download Site Issue Completion
    Click Download csv