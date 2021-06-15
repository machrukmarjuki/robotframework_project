*** Settings ***
Library                 Selenium2Library
Resource                ../../Resources/resource.robot
Resource                ../../Resources/login.robot
Resource                ../../Resources/res-admin-downloadmngr.robot
Suite Setup             Open Browser to Manage Menu



*** Test Cases ***
Go to Download Manager
        Go to Download Manager

Issue Report Download
        Filter by Issue
        Filter by Department
        #Filter by Sites
        Select Star Date
        Select End Date
        Click Search Button
        Verify Completed Report Founds
        Click Export All
        Verify "Export Started" Message is Displayed (Issue Report)
        Verify whether being directed to the "issue reports" tab
        Verify whether the "issue reports" is being exported
        Click Download Report


*** Keywords ***
Issue Report Download
        Filter by Issue
        Filter by Department
        #Filter by Sites
        Select Star Date
        Select End Date
        Click Search Button
        Verify Completed Report Founds
        Click Export All
        Verify "Export Started" Message is Displayed (Issue Report)
        Verify whether being directed to the "issue reports" tab
        Verify whether the "issue reports" is being exported
        Click Download Report