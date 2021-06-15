*** Settings ***
Library                 Selenium2Library
Resource                ../../Resources/resource.robot
Resource                ../../Resources/login.robot
Resource                ../../Resources/res-admin-auditor.robot
Suite Setup             Open Browser to Manage Menu

*** Test Cases ***
Go to Auditors Page
    Go to Auditors Page


Verify Edit Auditor Successfully
    Search Auditor to Edited
    Click Edit Icon
    Verify "Edit" icon can be clicked
    Verify "Edit User" modal rendered correctly
    Edit Username
    Edit Email Auditor
    Edit Phone
    Verify "User Name", "Role" and "Phone No" can be edited
    Click Save Changes


*** Keywords ***
#Edit Auditor
Search Auditor to Edited
        Wait Until Element is Enabled                ${field_search_auditors}                    ${Delay}
        Input Text                                   ${field_search_auditors}                    ${auditor_name_edited}
        Wait Until Element is Enabled                ${search_auditor_edited}                    ${Delay}
        Sleep                                        3
Click Edit Icon
        Wait Until Element is Enabled                ${icon_auditor_edit}                        ${Delay}
        Click Element                                ${icon_auditor_edit}
Edit Username
        ${RANDOM} =                                  Generate Random String                      3           [NUMBERS]
        Wait Until Element is Enabled                ${field_auditor_name}                       ${Delay}
        Input Text                                   ${field_auditor_name}                       ${auditor_name_edited} ${RANDOM}
Edit Email Auditor
        ${email_random} =                            Generate Random String                      8
        Wait Until Element is Enabled                ${field_auditor_email}                      ${Delay}
        Input Text                                   ${field_auditor_email}                      edited${email_random}${auditor_email}
Edit Phone
        ${phone_random} =                            Generate Random String                      10          [NUMBERS]
        Wait Until Element is Enabled                ${field_auditor_phone}                      ${Delay}
        Input Text                                   ${field_auditor_phone}                      62${phone_random}
Click Save Changes
        Wait Until Element is Enabled                ${button_auditor_save}                      ${Delay}
        Click Element                                ${button_auditor_save}
Edit Auditor Successfully
        Wait Until Element is Enabled                ${toast_auditor_edit_success}               ${Delay}

Verify "Edit" icon can be clicked
        Wait Until Element is Enabled               ${button_auditor_save}                      ${Delay}
        Element Should Be Enabled                   ${button_auditor_save}

Verify "Edit User" modal rendered correctly
        Wait Until ELement is Enabled               ${field_auditor_name}                       ${Delay}
        Page Should Contain Element                 ${field_auditor_name}
        #Element Should Be Disabled                  ${field_auditor_email}
        Page Should Contain Element                 ${dropdown_auditor_role}
        Page Should Contain Element                 ${field_auditor_phone}
        #Element Should Be Disabled                  ${button_auditor_save}
        Page Should Contain Element                 ${button_auditor_cancel}

Verify "User Name", "Role" and "Phone No" can be edited
        Element Should Be Enabled                   ${field_auditor_name}
        Element Should Be Enabled                   ${dropdown_auditor_role}
        Element Should Be Enabled                   ${field_auditor_phone}
        Element Should Be Enabled                   ${button_auditor_save}



#Edit Auditor - Test Case Templates
Verify Edit Auditor Successfully
    Search Auditor to Edited
    Click Edit Icon
    Verify "Edit" icon can be clicked
    Verify "Edit User" modal rendered correctly
    Edit Username
    Edit Email Auditor
    Edit Phone
    Verify "User Name", "Role" and "Phone No" can be edited
    Click Save Changes