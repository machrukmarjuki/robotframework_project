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

Verify Add Questionnaire (1 Question) is Successful
    Click Create Questionnaire
    Verify "Create Questionnaire" Modal rendered correctly
    Input Questionnaire Title
    Select Department
    Select Category
    Add Question 1
    Click Publish Button
    Verify Create Questionnaire is successfully
    Go to Questionnaire page
    Search Added Questionnaire
    Click Detail Questionnaire
    #Verify Questionnaire Category
    #Verify Questionnaire Department
    Verify Questionnaire Title





*** Keywords ***
Add Questionnaire (1 Question)
    Click Create Questionnaire
    Verify "Create Questionnaire" Modal rendered correctly
    Input Questionnaire Title
    Select Department
    Select Category
    Click Add Question Link
    Add Question 1
    Click Publish Button
    Verify Create Questionnaire is successfully
    Reload
    Search Added Questionnaire
    Click Detail Questionnaire
    Verify Questionnaire Category
    Verify Questionnaire Department
    Verify Questionnaire Title





Verify "Create Questionnaire" Modal rendered correctly
    Verify "Title" field is available
    Verify "Department" dropdown is available
    Verify "Category" dropdown is available
    Verify "Question" field is available
    Verify "Add Question" icon is available
    Verify "Add Category" icon is available
    Verify "Publish" button is available