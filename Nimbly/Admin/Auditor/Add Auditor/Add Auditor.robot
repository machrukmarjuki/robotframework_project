*** Settings ***
Library                 Selenium2Library
Resource                ../../Resources/resource.robot
Resource                ../../Resources/login.robot
Resource                ../../Resources/res-admin-auditor.robot
Suite Setup             Open Browser to Manage Menu

*** Test Cases ***
Go to Auditors Page
    Go to Auditors Page

Verify Add Auditor Successfully
    Click Add Auditor Button
    Verify "Add Auditor" Modal rendered correctly
    Input Auditor Name
    Input Email Auditor
    Verify Email Address is valid
    Input Phone No
    Select Auditor Role
    Select Departments
    Click Save Auditor Button
    Add Auditor Successfully



*** Keywords ***
Click Add Auditor Button
        Wait Until Element is Enabled                ${button_add_auditors}                     ${Delay}
        Click Element                                ${button_add_auditors}
Input Auditor Name
        ${RANDOM} =                                  Generate Random String                     3           [NUMBERS]
        Wait Until Element is Enabled                ${field_auditor_name}                      ${Delay}
        Input Text                                   ${field_auditor_name}                      ${auditor_name} ${RANDOM}
Input Email Auditor
        ${email_random} =                            Generate Random String                     8
        Input Text                                   ${field_auditor_email}                     ${email_random}${auditor_email}
Select Auditor Role
        Wait Until Element is Enabled                ${dropdown_auditor_role}                   ${Delay}
        Click Element                                ${dropdown_auditor_role}
        Wait Until Element is Enabled                ${list_auditor_role}                       ${Delay}
        Click Element                                ${list_auditor_role}
Select Departments
        Wait Until Element is Enabled                ${dropdown_auditor_department}             ${Delay}
        Click Element                                ${dropdown_auditor_department}
        Wait Until Element is Enabled                ${list_auditor_dapartment}                 ${Delay}
        Click Element                                ${list_auditor_dapartment}
Input Phone No
        ${phone_random} =                            Generate Random String                     10          [NUMBERS]
        Input Text                                   ${field_auditor_phone}                     62${phone_random}
Click Save Auditor Button
        Wait Until Element is Enabled                ${button_auditor_save}                     ${Delay}
        Click Element                                ${button_auditor_save}
Add Auditor Successfully
        Wait Until Page Contains                    successfully added                         ${Delay}
        Page Should Contain                         successfully added
        Search Auditor
        Page Should Contain                         ${auditor_name}
Verify "Add Auditor" Modal rendered correctly
        Wait Until ELement is Enabled               ${field_auditor_name}                       ${Delay}
        Page Should Contain Element                 ${field_auditor_name}
        Page Should Contain Element                 ${field_auditor_email}
        Page Should Contain Element                 ${dropdown_auditor_role}
        Page Should Contain Element                 ${dropdown_auditor_department}
        Page Should Contain Element                 ${field_auditor_phone}
        Element Should Be Disabled                  ${button_auditor_save}
        Page Should Contain Element                 ${button_auditor_cancel}
Verify Email Address is valid
        Wait Until Page Contains                    @hellonimbly.com                            ${Delay}
        Page Should Contain                         @hellonimbly.com
Verify Warning "Email has existed" Displayed
        Wait Until Page Contains                    Email has Existed.                          ${Delay}
        Page Should Contain                         Email has Existed.


#Add Auditor - Test Case Templates
Verify Add Auditor Successfully
    Click Add Auditor Button
    Verify "Add Auditor" Modal rendered correctly
    Input Auditor Name
    Input Email Auditor
    Verify Email Address is valid
    Input Phone No
    Select Auditor Role
    Select Departments
    Click Save Auditor Button
    Add Auditor Successfully