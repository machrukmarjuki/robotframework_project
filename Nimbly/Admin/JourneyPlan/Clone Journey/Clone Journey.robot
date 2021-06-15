*** Settings ***
Library                 Selenium2Library
Resource                ../../Resources/resource.robot
Resource                ../../Resources/login.robot
Resource                ../../Resources/res-admin-journey.robot
Suite Setup             Open Browser to Manage Menu
#Suite Teardown          Close Browser
Documentation           Verify "Clone Journey Plan" Features is working properly



*** Test Cases ***
Go to Journey Plan Page
    Go to Journey Plan Page


Verify Clone Journey Plan is Successfully
        Search Journey Plan to Clone
        Click Clone Button
        Verify Clone Dialog Popup is displayed
        Click Yes Clone
        Verify Clone Journey Plan Successful



*** Keywords ***
Verify Clone Journey Plan is Successfully
        Search Journey Plan to Clone
        Click Clone Button
        Verify Clone Dialog Popup is displayed
        Click Yes Clone
        Verify Clone Journey Plan Successful