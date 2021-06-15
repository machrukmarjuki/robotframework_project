*** Settings ***
Library                 Selenium2Library
Resource                ../../Resources/resource.robot
Resource                ../../Resources/login.robot
Resource                ../../Resources/res-admin-salestarget.robot
Suite Setup             Open Browser to Admin Menu



*** Test Cases ***
Go to Sales Target Page
    Go to Sales Target Page








*** Keywords ***
Upload Sales
    Click Upload Sales Button
    Verify Warning Message is Displayed
    Verify Pick a date Field is available
    Verify "Download" link is available
    Verify "Select" link is available
    Verify "Upload" button is available
    Verify "Cancel" upload button is available
    Select Sales File
    Click Upload Sales
    Verify Upload Sales Successful

Upload Target
    Click Upload Target Button
    Verify Warning Message is Displayed (Target Modul)
    Verify Pick a Month is available
    Verify Pick a Year is available
    Verify "Download" link is available
    Verify "Select" link is available
    Verify "Upload" target button is available
    Verify "Cancel" target button is available
    Select Target File
    Click Upload Target
    Verify Upload Target Successful