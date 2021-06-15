*** Settings ***
Library                 Selenium2Library
Resource                ../../Resources/resource.robot
Resource                ../../Resources/login.robot
Resource                ../../Resources/res-admin-journey.robot
Suite Setup             Open Browser to Manage Menu
#Suite Teardown          Close Browser
Documentation           Verify "Edit Journey Plan" Features is working properly



*** Test Cases ***
Go to Journey Plan Page
    Go to Journey Plan Page

Verify Edit Journey Plan is Successfully
        Search Journey Plan to Edit
        Click Edit Button
        Verify "Edit Journey" Modal rendered correctly
        Edit Journey Name
        Edit Department
        Edit Site to Visit
        Edit Quetionnaires for Sites
        Edit Schedule to Daily
        Click Save Journey Plan
        Verify Edit Journey Plan Successful








*** Keywords ***
Verify "Edit Journey" Modal rendered correctly
        Verify "Journey Name" field is available
        Verify "Journey Department" dropdown is available
        Verify "Site to visit" dropdown is available (edit)
        Verify "Salesman" dropdown is available (edit)
        Verify "Daily Journey" radio button is available
        Verify "Weekly Journey" radio button is available
        Verify "Monthly Journey" radio button is available
        Verify "Journey Questionnaire" dropdown is available (edit)
        Verify "None Signature" radio button is available
        Verify "Two Signature" radio button is available
        Verify "Selfie Signature" toggle is available

Verify Edit Journey Plan is Successfully
        Search Journey Plan to Edit
        Click Edit Button
        Verify "Edit Journey" Modal rendered correctly
        Edit Journey Name
        Edit Department
        Edit Site to Visit
        Edit Quetionnaires for Sites
        Click Save Journey Plan

Edit Journey Schedule to Daily
        Search Monthly Journey Plan to Edit
        Click Edit Button
        Verify "Edit Journey" Modal rendered correctly
        Edit Schedule to Daily
        Click Save Journey Plan

Edit Journey Schedule to Weekly
        Search Daily Journey Plan to Edit
        Click Edit Button
        Verify "Edit Journey" Modal rendered correctly
        Edit Schedule to Weekly
        Edit Schedule to Sunday
        Click Save Journey Plan

Edit Journey Schedule to Monthly
        Search Weekly Journey Plan to Edit
        Click Edit Button
        Verify "Edit Journey" Modal rendered correctly
        Edit Schedule to Monthly
        Edit Schedule to 31
        Click Save Journey Plan