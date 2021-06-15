*** Settings ***
Library                 Selenium2Library
Resource                ../../Resources/resource.robot
Resource                ../../Resources/login.robot
Resource                ../../Resources/res-admin-journey.robot
Suite Setup             Open Browser to Manage Menu
#Suite Teardown          Close Browser
Documentation           Verify "Create Journey Plan" Features is working properly

*** Test Cases ***

Go to Journey Plan Page
    Go to Journey Plan Page

Verify Create Daily Journey Plan is Successfully
        Click Create Journey Plan
        Verify "Create Journey" Modal rendered correctly
        Input Journey Name
        Select to Department
        Select Sites to Visit
        Select Daily Journey Schedule
        Select Salesman
        Select Questionnaire for Site in Journey
        Select One Signature
        Unselect Selfie Signature
        Send Email to
        Click Save Journey Plan
        Verify Creating Journey Plan Successful
        Delay

Verify Create Weekly Journey Plan is Successfully
        Click Create Journey Plan
        Verify "Create Journey" Modal rendered correctly
        Input Journey Name
        Select to Department
        Select Sites to Visit
        Select Weekly Journey Schedule
        Select Monday
        Select Tuesday
        Select Wednesday
        Select Thursday
        Select Friday
        Select Salesman
        Select Questionnaire for Site in Journey
        Select One Signature
        Unselect Selfie Signature
        Send Email to
        Click Save Journey Plan
        Verify Creating Journey Plan Successful
        Delay

Verify Create Monthly Journey Plan is Successfully
        Click Create Journey Plan
        Verify "Create Journey" Modal rendered correctly
        Input Journey Name
        Select to Department
        Select Sites to Visit
        Select Monthly Journey Schedule
        Select 01
        Select 20
        Select 30
        Select Salesman
        Select Questionnaire for Site in Journey
        Select One Signature
        Unselect Selfie Signature
        Send Email to
        Click Save Journey Plan
        Verify Creating Journey Plan Successful







*** Keywords ***
Verify "Create Journey" Modal rendered correctly
        Verify "Journey Name" field is available
        Verify "Journey Department" dropdown is available
        Verify "Site to visit" dropdown is available
        Verify "Salesman" dropdown is available
        Verify "Daily Journey" radio button is available
        Verify "Weekly Journey" radio button is available
        Verify "Monthly Journey" radio button is available
        Verify "Journey Questionnaire" dropdown is available
        Verify "None Signature" radio button is available
        Verify "Two Signature" radio button is available
        Verify "Selfie Signature" toggle is available
Verify Create Daily Journey Plan is Successfully
        Click Create Journey Plan
        Verify "Create Journey" Modal rendered correctly
        Input Journey Name
        Select to Department
        Select Sites to Visit
        Select Daily Journey Schedule
        Select Salesman
        Select Questionnaire for Site in Journey
        Select One Signature
        Unselect Selfie Signature
        Send Email to
        Click Save Journey Plan
        Verify Creating Journey Plan Successful
        #Verify Daily Journey Plan Detail

Verify Create Weekly Journey Plan is Successfully
        Click Create Journey Plan
        Verify "Create Journey" Modal rendered correctly
        Input Journey Name
        Select to Department
        Select Sites to Visit
        Select Weekly Journey Schedule
        Select Monday
        Select Tuesday
        Select Wednesday
        Select Thursday
        Select Friday
        Select Salesman
        Select Questionnaire for Site in Journey
        Select One Signature
        Unselect Selfie Signature
        Send Email to
        Click Save Journey Plan
        Verify Creating Journey Plan Successful
        #Verify Weekly Journey Plan Detail

Verify Create Monthly Journey Plan is Successfully
        Click Create Journey Plan
        Input Journey Name
        Select to Department
        Select Sites to Visit
        Select Monthly Journey Schedule
        Select 01
        Select 20
        Select 30
        Select Salesman
        Select Questionnaire for Site in Journey
        Select One Signature
        Unselect Selfie Signature
        Send Email to
        Click Save Journey Plan
        Verify Creating Journey Plan Successful
        #Verify Monthly Journey Plan Detail