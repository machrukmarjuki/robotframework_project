*** Settings ***
Library                 Selenium2Library
Resource                ../../Resources/resource.robot
Resource                ../../Resources/login.robot
Resource                ../../Resources/res-admin-competitor.robot
Suite Setup             Open Browser to Manage Menu


Documentation           Verify Export Feature is working properly

*** Test Cases ***
Go to Competitor Page
        Go to Competitor Page
        Click Export Tab

Verify "Export" page rendered correctly
        Verify "Competitor" tab is available
        Verify "Products" tab is available
        Verify "Promotions" tab is available
        Verify "Type Data" dropdown is available
        Verify "Start Date" dropdown is available
        Verify "End Date" dropdown is available
        Verify "Search" button is available
        Verify columns labeled "Downloaded On", "Type", "Num of Product/Promotion", and "Date" are available
        Verify "Download" button is available
        #Verify Next, Previous, First and Last page on pagination work properly


Verify search "Product" data is successfully
        Verify search "Product" data is successfully





*** Keywords ***
Verify search "Product" data is successfully
        Select Product Data
        Select Start Date
        Select Next Month
        Select End Date
        Click Search button
        Verify Download All is Successfully