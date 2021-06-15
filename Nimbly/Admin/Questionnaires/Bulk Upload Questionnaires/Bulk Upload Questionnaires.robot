*** Settings ***
Library                 Selenium2Library
Resource                ../../Resources/resource.robot
Resource                ../../Resources/login.robot
Resource                ../../Resources/res-admin-questionnaires.robot
Suite Setup             Open Browser to Manage Menu
#Suite Teardown          Close Browser


*** Test Cases ***
Go to Questionnaire page
    Go to Questionnaire page








*** Keywords ***
Questionnaire Bulk Upload
    Click Bulk Upload Button
    Input Questionnaire Title Upload
    Select Department Upload
    Choose file
    Click Upload