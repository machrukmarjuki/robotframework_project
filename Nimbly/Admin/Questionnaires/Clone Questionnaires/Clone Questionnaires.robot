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

Verify Clone Questionnaire is Successfully
    Search Questionnaires to Clone
    Click Clone Button
    Verify Clone Dialog Popup is displayed
    Click Yes Clone
    Verify Clone Questionnaire Successfull


*** Keywords ***
Verify Clone Questionnaire is Successfully
    Search Questionnaires to Clone
    Click Clone Button
    Verify Clone Dialog Popup is displayed
    Click Yes Clone
    Verify Clone Questionnaire Successfull