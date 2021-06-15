*** Settings ***
Library                 Selenium2Library
Resource                ../../Resources/resource.robot
Resource                ../../Resources/login.robot
Resource                ../../Resources/res-issuetracker.robot
#Suite Setup             Open Browser to Login Page
#Suite Teardown          Close Browser


*** Test Cases ***
Open Browser to Login Page
        Open Browser to Login Page
Go to Issue Tracker Page
        Go to Issue Tracker Page
Verify Add Comment is Successfully
        Verify Add Comment is Successfully






*** Keywords ***
Open Browser to Login Page
        Open Browser                                ${SERVER}                                   ${BROWSER}
        Valid Login


Verify Add Comment is Successfully
    Select Issue
    Input Comment
    Click Post Button
    Verify Post Comment Successfully