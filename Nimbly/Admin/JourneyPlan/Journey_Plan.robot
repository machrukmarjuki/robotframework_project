*** Settings ***
Library                 Selenium2Library
Resource                ../../Resources/resource.robot
Resource                ../../Resources/login.robot
Resource                ../../Resources/res-admin-journey.robot
Suite Setup             Open Browser to Manage Menu
#Suite Teardown          Close Browser
Documentation           Create Journey Plan





*** Test Cases ***
Go to Journey Plan Page
    Go to Journey Plan Page

Create Daily Journey Plan
    Create Daily Journey Plan






*** Keywords ***
#Test Case Templates













