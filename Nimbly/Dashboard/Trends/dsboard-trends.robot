*** Settings ***
Library                 Selenium2Library
Resource                ../../Resources/resource.robot
Resource                ../../Resources/login.robot
Resource                ../../Resources/res-dashboard-trends.robot
Suite Setup             Open Browser to Login Page
Suite Teardown          Close Browser



*** Test Cases ***
Verify Dashboard Trends is Displayed Properly
    Go to the Dashboard Trends
    Verify Filter by Questionnaire is Available
    Verify Filter by Question Category is Available
    Verify Filter by Question is Available
    Verify Filter by Auditor is Available
    Verify Filter by Periods is Available
    Verify "Multiple Choice" Tab is Available
    Verify "Checklist" Tab is Available
    Verify "Yes/No" Tab is Available
    Verify "Score" Tab is Available
    Verify "Number" Tab is Available
    Verify "Green/Yellow/Red" Tab is Available
    Verify "Open Ended" Tab is Available
    Verify "Range Flag" Tab is Available
    Verify "Competitor Analysis" Tab is Available

Verify "Multiple Choice" Modul is Displayed Properly
    View by Last Year
    Click Multiple Choice Tab
    Filter by Questionnaire
    Filter by Question Category
    Filter by "Multiple Choice" Question
    Verify Chart on "Multiple Choice" Tab is Displayed
    Verify Percentage on "Multiple Choice" Tab is Displayed

Verify "Range with Flags" Modul is Displayed Properly
    Click Range Flag Tab
    Filter by Questionnaire
    Filter by Question Category
    Filter by "Range with Flags" Question
    Verify Chart on "Range Flag" Tab is Displayed
    Verify Percentage on "Range Flag" Tab is Displayed

Verify "Open Ended" Modul is Displayed Properly
    Click Open Ended Tab
    Filter by Questionnaire
    Filter by Question Category
    Filter by "Open-Ended" Question
    Verify Chart on "Open Ended" Tab is Displayed
    Delay

Verify "Checklist" Modul is Displayed Properly
    Click Checklist Tab
    Filter by Questionnaire
    Filter by Question Category
    Filter by "Cheklist" Question
    Verify Chart on "Checklist" Tab is Displayed
    Verify Percentage on "Checklist" Tab is Displayed
    Delay

Verify "Score" Modul is Displayed Properly
    Click Score Tab
    Filter by Questionnaire
    Filter by Question Category
    Filter by "Score" Question
    Verify Chart on "Score" Tab is Displayed
    Delay

Verify "Yes/No" Modul is Displayed Properly
    Click Yes/No Tab
    Filter by Questionnaire
    Filter by Question Category
    Filter by "Yes/No" Question
    Verify Chart on "Yes/No" Tab is Displayed
    Verify Percentage on "Yes/No" Tab is Displayed
    Delay

Verify "Number" Modul is Displayed Properly
    Click Number Tab
    Filter by Questionnaire
    Filter by Question Category
    Filter by "Number" Question
    Verify Chart on "Number" Tab is Displayed
    Delay

Verify "Green/Yellow/Red" Modul is Displayed Properly
    Click Green/Yellow/Red Tab
    Filter by Questionnaire
    Filter by Question Category
    Filter by "Green/Yellow/Red" Question
    Verify Chart on "Green/Yellow/Red" Tab is Displayed
    Verify Percentage on "Green/Yellow/Red" Tab is Displayed


*** Keywords ***
Verify Dashboard Trends is Displayed Properly
    Go to the Dashboard Trends
    Verify Filter by Questionnaire is Available
    Verify Filter by Question Category is Available
    Verify Filter by Question is Available
    Verify Filter by Auditor is Available
    Verify Filter by Periods is Available
    Verify "Multiple Choice" Tab is Available
    Verify "Checklist" Tab is Available
    Verify "Yes/No" Tab is Available
    Verify "Score" Tab is Available
    Verify "Number" Tab is Available
    Verify "Green/Yellow/Red" Tab is Available
    Verify "Open Ended" Tab is Available
    Verify "Range Flag" Tab is Available
    Verify "Competitor Analysis" Tab is Available

Verify "Multiple Choice" Modul is Displayed Properly
    Click Multiple Choice Tab
    Filter by Questionnaire
    Filter by Question Category
    Filter by "Multiple Choice" Question
    Delay
    View by Last Year
    #Filter by Auditor
    Verify Chart on "Multiple Choice" Tab is Displayed
    Verify Percentage on "Multiple Choice" Tab is Displayed

Verify "Checklist" Modul is Displayed Properly
    Click Checklist Tab
    Filter by Questionnaire
    Filter by Question Category
    Filter by "Cheklist" Question
    Delay
    View by Last Year
    #Filter by Auditor
    Verify Chart on "Checklist" Tab is Displayed
    Verify Percentage on "Checklist" Tab is Displayed


Verify "Yes/No" Modul is Displayed Properly
    Click Yes/No Tab
    Filter by Questionnaire
    Filter by Question Category
    Filter by "Yes/No" Question
    Delay
    View by Last Year
    #Filter by Auditor
    Verify Chart on "Yes/No" Tab is Displayed
    Verify Percentage on "Yes/No" Tab is Displayed

Verify "Score" Modul is Displayed Properly
    Click Score Tab
    Filter by Questionnaire
    Filter by Question Category
    Filter by "Score" Question
    Delay
    View by Last Year
    #Filter by Auditor
    Verify Chart on "Score" Tab is Displayed


Verify "Number" Modul is Displayed Properly
    Click Number Tab
    Filter by Questionnaire
    Filter by Question Category
    Filter by "Number" Question
    Delay
    View by Last Year
    #Filter by Auditor
    Verify Chart on "Number" Tab is Displayed

Verify "Green/Yellow/Red" Modul is Displayed Properly
    Click Green/Yellow/Red Tab
    Filter by Questionnaire
    Filter by Question Category
    Filter by "Green/Yellow/Red" Question
    Delay
    View by Last Year
    #Filter by Auditor
    Verify Chart on "Green/Yellow/Red" Tab is Displayed
    Verify Percentage on "Green/Yellow/Red" Tab is Displayed

Verify "Open Ended" Modul is Displayed Properly
    Click Open Ended Tab
    Filter by Questionnaire
    Filter by Question Category
    Filter by "Open-Ended" Question
    Delay
    View by Last Year
    #Filter by Auditor
    Verify Chart on "Open Ended" Tab is Displayed


Verify "Range with Flags" Modul is Displayed Properly
    Click Range Flag Tab
    Filter by Questionnaire
    Filter by Question Category
    Filter by "Range with Flags" Question
    Delay
    View by Last Year
    #Filter by Auditor
    Verify Chart on "Range Flag" Tab is Displayed
    Verify Percentage on "Range Flag" Tab is Displayed

Verify "Competitor Analysis" Modul is Displayed Properly
    Click Competitor Analysis Tab
    Filter by Questionnaire
    Filter by Question Category
    Filter by "Competitor Analysis" Question
    Delay
    View by Last Year
    #Filter by Auditor
    Verify Chart on "Competitor Analysis" Tab is Displayed
    Verify Percentage on "Competitor Analysis" Tab is Displayed



