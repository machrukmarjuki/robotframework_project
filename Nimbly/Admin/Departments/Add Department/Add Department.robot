*** Settings ***
Library                 Selenium2Library
Resource                ../../Resources/resource.robot
Resource                ../../Resources/login.robot
Resource                ../../Resources/res-admin-department.robot
Suite Setup             Open Browser to Manage Menu
#Suite Teardown          Close Browser

*** Test Cases ***
Go to Departments Page
    Go to Departments Page

Verify Add Department Successfully
    Click Add Department Button
    Verify "Add Department" Modal rendered correctly
    Select Department Sites
    Select Questionnaires
    Input Department Name
    Input Description
    Input Email Department
    Input Department Key
    #Click Check Key
    Click Save Department
    Add Department Successfully










*** Keyword ***

#Add Department - Templates
Verify Add Special Department Successfully
    Click Add Department Button
    Verify "Add Department" Modal rendered correctly
    Select Department Sites
    Select Questionnaires
    Input Special Department Name
    Input Description
    Input Email Department
    Input Special Department Key
    #Click Check Key
    Click Save Department

Verify Add Department Successfully
    Click Add Department Button
    Verify "Add Department" Modal rendered correctly
    Select Department Sites
    Select Questionnaires
    Input Department Name
    Input Description
    Input Email Department
    Input Department Key
    #Click Check Key
    Click Save Department
    Add Department Successfully

Verify Add Department with Member Successfully
    Click Add Department Button
    Verify "Add Department" Modal rendered correctly
    Input Department Name
    Input Description
    Input Email Department
    Input Department Key
    #Click Check Key
    Select Department Sites
    Select Department Questionnaire
    Select Level
    Select User
    Click Save Department

Verify Add Department with Escalation successfully
    Click Add Department Button
    Input Department Name
    Input Description
    Input Email Department
    Input Department Key
    #Click Check Key
    Select Department Sites
    Select Department Questionnaire
    Select Level
    Select User
    Click Another Level
    Select Escalation Time
    Add Level
    Add User
    Click Save Department