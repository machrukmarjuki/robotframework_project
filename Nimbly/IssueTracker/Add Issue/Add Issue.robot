*** Settings ***
Library                 Selenium2Library
Resource                ../../Resources/resource.robot
Resource                ../../Resources/login.robot
Resource                ../../Resources/res-issuetracker.robot
Suite Setup             Open Browser to Login Page
#Suite Teardown          Close Browser

*** Test Cases ***
Go to Issue Tracker Page
        Go to Issue Tracker Page

Verify "Issue Tracker" page is rendered correctly
        Verify Filter by Questionnaire is Available
        Verify Filter by User is Available
        Verify Filter by Department is Available
        Verify Filter by Site is Available
        Verify Filter by Red & Yellow Flags are Available
        Verify Filter by Priority is Available
        Verify Filter by Status Open & Resolve is Available
        Verify View by date is Available
        Verify Sort by "Date Created" is available
        Verify Sort by "Due Date" is available
        Verify "Add Issue" button is Available

Verify Add Issue is Successfully
        Verify Add Issue is Successfully

Verify "Update Status to Resolved" is Successfully
        Verify "Update Status to Resolved" is Successfully





*** Keywords ***
#Test Cases Template
Verify "Add Issue" Modul is rendered correctly
    Verify "Title" Field is Available
    Verify "Category" dropdown is Available
    Verify "Assigned Department" dropdown is available
    Verify "Reporter Department" dropdown is available
    Verify "Severity" dropdown is available
    Verify "Due Date & Time" dropdown is available
    Verify "Site" dropdown is available
    Verify "Assigned to" dropdown is available
    Verify "Comment" Field is available
    Verify "Add Image" link is available
    Verify "Save" button is available
    Verify "Cancel" button is available


Verify Add Issue is Successfully
    Click Add Issue Button
    Verify "Add Issue" Modul is rendered correctly
    Input title
    Select Assigned Department
    Select Reporter Department
    Select Site
    Select Assign User
    Input Comment Issue
    Select Category
    Click button save
    Delay
    #Verify Add Issue Successfully


Verify "Update Status to Resolved" is Successfully
    Filter by Status "Open"
    Select Issue
    Select Status Resolved
    Wait Until the status changes to be resolved



Verify "Issue Tracker" page is rendered correctly
        Verify Filter by Questionnaire is Available
        Verify Filter by User is Available
        Verify Filter by Department is Available
        Verify Filter by Site is Available
        Verify Filter by Red & Yellow Flags are Available
        Verify Filter by Priority is Available
        Verify Filter by Status Open & Resolve is Available
        Verify View by date is Available
        Verify Sort by "Date Created" is available
        Verify Sort by "Due Date" is available
        Verify "Add Issue" button is Available