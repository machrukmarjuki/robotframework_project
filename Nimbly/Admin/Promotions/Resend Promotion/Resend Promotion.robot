*** Settings ***
Library                 Selenium2Library
Resource                ../../Resources/resource.robot
Resource                ../../Resources/login.robot
Resource                ../../Resources/res-admin-promotions.robot
Suite Setup             Open Browser to Admin Menu
#Suite Teardown          Close Browser
Documentation           Promotion



*** Test Cases ***
Go to Promotions Page
        Go to Promotions Page

Resend Archived Promotion
        Click Archived Tab
        #Search Promotion to Resend
        Click Resend
        Input Promotion Title
        Input Promotion Description
        Select Radio Button Specific Site
        Select Specific Site
        Select Specific Date & Time
        Select Specific start date
        Select Specific Start Time
        Select Specific Start AM/PM
        Select Specific End Date
        Select Specific End Time
        Select Specific End AM/PM
        Add Promotion Image
        Click Save Promotion
        Verify Resend Promotion Successful





*** Keywords ***
Resend Archived Promotion
        Click Archived Tab
        #Search Promotion to Resend
        Click Resend
        Input Promotion Title
        Input Promotion Description
        Select Radio Button Specific Site
        Select Specific Site
        Select Specific Date & Time
        Select Specific start date
        Select Specific Start Time
        Select Specific Start AM/PM
        Select Specific End Date
        Select Specific End Time
        Select Specific End AM/PM
        Add Promotion Image
        Click Save Promotion
        Verify Resend Promotion Successful