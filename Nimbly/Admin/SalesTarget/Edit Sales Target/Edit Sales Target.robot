*** Settings ***
Library                 Selenium2Library
Resource                ../../Resources/resource.robot
Resource                ../../Resources/login.robot
Resource                ../../Resources/res-admin-salestarget.robot
Suite Setup             Open Browser to Admin Menu



*** Test Cases ***

Go to Sales Target Page
    Go to Sales Target Page

Verify Edit Target is successful
    Search Site
    Click Edit Sales Target Button
    Verify Dropdown Month is available
    Verify Dropdown Year is available
    Verify "Amount" field is available
    Verify "Save" button is available
    Verify "Cancel" button is available
    Edit Month
    Input Amount
    Click Save Target Button
    Verify Edit Target Successful


*** Keywords ***
Verify Edit Period is successful
    Click Edit Button
    Select Month
    Click Save Period

Verify Edit Sales Target is successful
    Search Site
    Click Edit Sales Target Button
    Verify Dropdown Month is available
    Verify Dropdown Year is available
    Verify "Amount" field is available
    Verify "Save" button is available
    Verify "Cancel" button is available
    Edit Month
    Input Amount
    Click Save Target Button
    Verify Edit Target Successful

Verify Edit Sales via View Detail is Successful
    Search Site
    Click View Detail Button
    Verify Title "Sales Detail" Is Displayed
    Verify Prev Month Icon is Available
    Verify Next Month Icon is Available
    Verify Progress Bar is Displayed
    Verify Add Sales Button is Available
    Click Edit Sales Button
    Edit Sales
    Verify Edit Sales Successful