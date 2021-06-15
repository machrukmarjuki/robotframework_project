*** Settings ***
Library                 Selenium2Library
Resource                ../../Resources/resource.robot
Resource                ../../Resources/login.robot
Resource                ../../Resources/res-admin-downloadmngr.robot
Suite Setup             Open Browser to Manage Menu



*** Test Cases ***
Go to Download Manager
        Go to Download Manager

Missed Report Download
        Filter by Missed Report
        Filter by Department missed report
        Filter by Sites
        Select Star Date
        Select End Date
        Click Search Button
        Verify Completed Report Founds
        Click Export All
        #Verify "Export Started" Message is Displayed
        Verify whether being directed to the "missed reports" tab
        Verify whether the "missed reports" is being exported
        Click Download Report

*** Keywords ***
Missed Report Download
        Filter by Missed Report
        Filter by Department missed report
        Filter by Sites
        Select Star Date
        Select End Date
        Click Search Button
        Verify Completed Report Founds
        Click Export All
        #Verify "Export Started" Message is Displayed
        Verify whether being directed to the "missed reports" tab
        Verify whether the "missed reports" is being exported
        Click Download Report