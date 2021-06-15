*** Settings ***
Library                 Selenium2Library
Resource                ../../Resources/resource.robot
Resource                ../../Resources/login.robot
Resource                ../../Resources/res-admin-promotions.robot
Suite Setup             Open Browser to Admin Menu
#Suite Teardown          Close Browser
Documentation           Promotion



*** Test Cases ***
Go to "Promotions" Page
        Go to Promotions Page

Edit Active Promotion End Date
        #Search Promotion to Edit
        Click Edit Button
        Select Specific End Date
        Click Save Promotion
        Verify Edit Promotion Successful
        Go to Promotions Page

Edit Scheduled Promotion End Date
        Click Scheduled Tab
        Click Edit Button
        Select Specific End Date
        Click Save Promotion
        Verify Edit Promotion Successful




*** Keywords ***
Edit Active Promotion End Date
        #Search Promotion to Edit
        Click Edit Button
        Select End Date
        Click Save Promotion
        Verify Edit Promotion Successful

Edit Scheduled Promotion End Date
        Click Scheduled Tab
        Click Edit Button
        Select End Date
        Click Save Promotion
        Verify Edit Promotion Successful