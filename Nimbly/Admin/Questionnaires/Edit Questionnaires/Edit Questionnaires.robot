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

Verify Edit Questionnaire Title is Successfully
    Search Questionnaires to Edit
    Click Edit Button
    Verify "Edit Questionnaire" Modal rendered correctly
    Edit Title
    Click Publish Button
    Verify Edit Questionnaire Title Successfull





*** Keywords ***
Verify "Edit Questionnaire" Modal rendered correctly
    Verify "Title" field is available
    Verify "Department" dropdown is available
    Verify "Category" dropdown is available
    Verify "Question" field is available
    Verify "Add Question" icon is available
    Verify "Add Category" icon is available
    Verify "Publish" button is available

Verify Edit Questionnaire Title is Successfully
    Search Questionnaires to Edit
    Click Edit Button
    Edit Title
    Click Publish Button
    Verify Edit Questionnaire Title Successfull
