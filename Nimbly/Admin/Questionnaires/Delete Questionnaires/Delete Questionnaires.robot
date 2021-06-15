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

Verify Delete Questionnaire is Successfully
    Search Questionnaires to Delete
    Click Delete Button
    Verify Delete Dialog Popup is displayed
    Click Yes Delete
    Verify Delete Questionnaire Successfully





*** Keywords ***
Verify Delete Questionnaire is Successfully
    Search Questionnaires to Delete
    Click Delete Button
    Verify Delete Dialog Popup is displayed
    Click Yes Delete
    Verify Delete Questionnaire Successfully