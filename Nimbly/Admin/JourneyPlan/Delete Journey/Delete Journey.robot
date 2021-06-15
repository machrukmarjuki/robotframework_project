*** Settings ***
Library                 Selenium2Library
Resource                ../../Resources/resource.robot
Resource                ../../Resources/login.robot
Resource                ../../Resources/res-admin-journey.robot
Suite Setup             Open Browser to Manage Menu
#Suite Teardown          Close Browser
Documentation           Verify "Delete Journey Plan" Features is working properly




*** Test Cases ***
Go to Journey Plan Page
    Go to Journey Plan Page


Verify Delete Journey Plan is Successfully
    Search Journey Plan to Delete
    Click Delete Button
    Verify Delete Dialog Popup is displayed
    Click Yes Delete
    Verify Delete Journey Plan Successful





*** Keywords ***
Verify Delete Journey Plan is Successfully
    Search Journey Plan to Delete
    Click Delete Button
    Verify Delete Dialog Popup is displayed
    Click Yes Delete
    Verify Delete Journey Plan Successful