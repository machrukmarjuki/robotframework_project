*** Settings ***
Library                 Selenium2Library
Resource                ../../Resources/resource.robot
Resource                ../../Resources/login.robot
Resource                ../../Resources/res-admin-salestarget.robot
Suite Setup             Open Browser to Admin Menu



*** Test Cases ***

Go to Sales Target Page
    Go to Sales Target Page

Add Sales via View Detail
    Search Site
    Click View Detail Button
    Verify Progress Bar is Displayed
    Verify Title "Sales Detail" Is Displayed
    Verify Add Sales Button is Available
    Click Add Sales Button
    Input Sales
    Click Submit Button
    Verify Add Sales Successfull

*** Keywords ***
Add Sales via View Detail
    Search Site
    Click View Detail Button
    Verify Title "Sales Detail" Is Displayed
    #Verify Prev Month Icon is Available
    #Verify Next Month Icon is Available
    Verify Progress Bar is Displayed
    Verify Add Sales Button is Available
    Click Add Sales Button
    #Input Sales
    Click Submit Button
    #Verify Add Sales Successfull