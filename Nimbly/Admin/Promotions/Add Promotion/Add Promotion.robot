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

Add New Promotion All Sites
        Click New Promotion
        Verify the New Promotion form is Displayed
        Input Promotion Title
        Input Promotion Description
        Select All Site
        Select Send Now
        Add Promotion Image
        Click Save Promotion
        Verify Create Promotion Successful
        Go to Promotions Page

Add New Promotion with Specific Site
        Click New Promotion
        Verify the New Promotion form is Displayed
        Input Promotion Title
        Input Promotion Description
        Select Radio Button Specific Site
        Select Specific Site
        Select Send Now
        Select End date
        Select End time
        Select End am/pm
        Add Promotion Image
        Click Save Promotion
        Verify Create Promotion Successful
        Go to Promotions Page

Add New Promotion with Specific Department
        Click New Promotion
        Verify the New Promotion form is Displayed
        Input Promotion Title
        Input Promotion Description
        Select Radio Button Specific Department
        Select Specific Department
        Select Send Now
        Select End date
        Select End time
        Select End am/pm
        Add Promotion Image
        Click Save Promotion
        Verify Create Promotion Successful
        Go to Promotions Page

Add New Promotion with Specific Date & Time
        Click New Promotion
        Verify the New Promotion form is Displayed
        Input Promotion Title
        Input Promotion Description
        Select Radio Button Specific Department
        Select Specific Department
        Select Specific Date & Time
        Select Specific start date
        Select Specific Start Time
        Select Specific Start AM/PM
        Select Specific End Date
        Select Specific End Time
        Select Specific End AM/PM
        Add Promotion Image
        Click Save Promotion
        Verify Create Promotion Successful

*** Keywords ***
#Parallel Scenarios
Add New Promotion All Sites
        Click New Promotion
        Verify the New Promotion form is Displayed
        Input Promotion Title
        Input Promotion Description
        Select All Site
        Select Send Now
        Add Promotion Image
        Click Save Promotion
        Verify Create Promotion Successful
        Go to Promotions Page

Add New Promotion with Specific Site
        Click New Promotion
        Verify the New Promotion form is Displayed
        Input Promotion Title
        Input Promotion Description
        Select Radio Button Specific Site
        Select Specific Site
        Select Send Now
        Select End date
        Select End time
        Select End am/pm
        Add Promotion Image
        Click Save Promotion
        Verify Create Promotion Successful
        Go to Promotions Page

Add New Promotion with Specific Department
        Click New Promotion
        Verify the New Promotion form is Displayed
        Input Promotion Title
        Input Promotion Description
        Select Radio Button Specific Department
        Select Specific Department
        Select Send Now
        Select End date
        Select End time
        Select End am/pm
        Add Promotion Image
        Click Save Promotion
        Verify Create Promotion Successful
        Go to Promotions Page

Add New Promotion with Specific Date & Time
        Click New Promotion
        Verify the New Promotion form is Displayed
        Input Promotion Title
        Input Promotion Description
        Select Radio Button Specific Department
        Select Specific Department
        Select Specific Date & Time
        Select Specific start date
        Select Specific Start Time
        Select Specific Start AM/PM
        Select Specific End Date
        Select Specific End Time
        Select Specific End AM/PM
        Add Promotion Image
        Click Save Promotion
        Verify Create Promotion Successful