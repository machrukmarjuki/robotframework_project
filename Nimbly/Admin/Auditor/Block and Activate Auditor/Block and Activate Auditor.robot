*** Settings ***
*** Settings ***
Library                 Selenium2Library
Resource                ../../Resources/resource.robot
Resource                ../../Resources/login.robot
Resource                ../../Resources/res-admin-auditor.robot
Suite Setup             Open Browser to Manage Menu
#Suite Teardown          Close Browser

*** Test Cases ***
Go to Auditors Page
    Go to Auditors Page

Verify Block Auditor Successfully
    Search Auditor to Blocked
    Click Block Icon
    Verify "Block" icon can be clicked
    Verify Confirmation Popup "Block" is displayed properly
    Verify "Yes, Block" and "No" buttons are available
    Click Yes Block
    Block Auditor Successfully
    Delay

Verify Activate Auditor Successfully
    Click Blocked Auditor Tab
    Verify "Blocked" tab rendered correctly
    Search Auditor to Activated
    Click Activate Icon
    Verify "Activate" icon can be clicked
    Verify Confirmation Popup "Activate" is displayed properly
    Verify "Yes, Activate" and "No" buttons are available
    Click Yes Activate
    Activate Auditor Successfully




*** Keywords ***
#Verify Auditor -> Blocked Tab
Verify columns labeled "Email", "Name", "Phone No", "Role", and "Status" are available
        Wait Until ELement is Enabled               ${label_email_auditor}                      ${Delay}
        Page Should Contain Element                 ${label_email_auditor}
        Page Should Contain Element                 ${label_name_auditor}
        Page Should Contain Element                 ${label_phone_auditor}
        Page Should Contain Element                 ${label_role_auditor}
        Page Should Contain Element                 ${label_status_auditor}
        Sleep                                       5
Verify Blocked list is displayed correctly
        Wait Until ELement is Enabled               ${label_email_auditor}                      ${Delay}
        Page Should Contain Element                 ${label_email_auditor}
        Page Should Contain Element                 ${label_name_auditor}
        Page Should Contain Element                 ${label_phone_auditor}
        Page Should Contain Element                 ${label_role_auditor}
        Page Should Contain Element                 ${label_status_auditor}
        Page Should Contain Element                 ${button_auditor_activate}

#Activate Auditor
Click Blocked Auditor Tab
        Wait Until Element is Enabled               ${tab_auditor_blocked}                      ${Delay}
        Click Element                               ${tab_auditor_blocked}
Search Auditor to Activated
        Wait Until Element is Enabled               ${field_search_auditors}                    ${Delay}
        Input Text                                  ${field_search_auditors}                    ${auditor_name}
        Wait Until Element is Enabled               ${search_auditor_result}                    ${Delay}
        Sleep                                       3
Click Activate Icon
        Wait Until Element is Enabled               ${button_auditor_activate}                  ${Delay}
        Click Element                               ${button_auditor_activate}
Verify "Activate" Icon is available
        Wait Until ELement is Enabled               ${button_auditor_activate}                  ${Delay}
        Page Should Contain Element                 ${button_auditor_activate}
Click Yes Activate
        Wait Until Element is Enabled               ${button_yes_activate_auditor}              ${Delay}
        Click Element                               ${button_yes_activate_auditor}
Activate Auditor Successfully
        Wait Until Page Contains                    ${toast_auditor_activate_success}           ${Delay}
        Page Should Contain                         ${toast_auditor_activate_success}
Verify "Activate" icon can be clicked
        Wait Until Element is Enabled               ${button_yes_activate_auditor}              ${Delay}
        Element Should Be Enabled                   ${button_yes_activate_auditor}
Verify Confirmation Popup "Activate" is displayed properly
        Wait Until Element is Enabled               ${button_yes_activate_auditor}              ${Delay}
        Page Should Contain                          Are you sure want to activate this User?
Verify "Yes, Activate" and "No" buttons are available
        Page Should Contain Element                 ${button_yes_activate_auditor}
        Page Should Contain Element                 ${button_no_activate_auditor}

#Block Auditor
Search Auditor to Blocked
        Wait Until Element is Enabled                   ${field_search_auditors}                    ${Delay}
        Input Text                                      ${field_search_auditors}                    ${auditor_name}
        Wait Until Element is Enabled                   ${search_auditor_result}                    ${Delay}
        Sleep                                           3
Click Block Icon
        Wait Until Element is Enabled                   ${icon_auditor_block}                       ${Delay}
        Click Element                                   ${icon_auditor_block}
Click Yes Block
        Wait Until Element is Enabled                   ${button_yes_block_auditor}                 ${Delay}
        Click Element                                   ${button_yes_block_auditor}
Block Auditor Successfully
        Wait Until Page Contains                        ${toast_auditor_block_success}              ${Delay}
        Page Should Contain                             ${toast_auditor_block_success}
Verify "Block" icon can be clicked
        Wait Until Element is Enabled                   ${button_yes_block_auditor}                 ${Delay}
        Element Should Be Enabled                       ${button_yes_block_auditor}
Verify Confirmation Popup "Block" is displayed properly
        Wait Until ELement is Enabled                   ${button_yes_block_auditor}                 ${Delay}
        Page Should Contain                             Are you sure you want to block this User?
        Page Should Contain                             User has
Verify "Yes, Block" and "No" buttons are available
        Page Should Contain Element                     ${button_yes_block_auditor}
        Page Should Contain Element                     ${button_yes_block_auditor}



#Blocked Tab
Verify "Blocked" tab rendered correctly
    Verify columns labeled "Email", "Name", "Phone No", "Role", and "Status" are available
    Verify Blocked list is displayed correctly
    Verify "Activate" Icon is available



#Block Auditor - Test Case Templates
Verify Block Auditor Successfully
    Search Auditor to Blocked
    Click Block Icon
    Verify "Block" icon can be clicked
    Verify Confirmation Popup "Block" is displayed properly
    Verify "Yes, Block" and "No" buttons are available
    Click Yes Block
    Block Auditor Successfully
    Delay

#Activate Auditor - Test Case Templates
Verify Activate Auditor Successfully
    Click Blocked Auditor Tab
    Verify Blocked list is displayed correctly
    Search Auditor to Activated
    Click Activate Icon
    Verify "Activate" icon can be clicked
    Verify Confirmation Popup "Activate" is displayed properly
    Verify "Yes, Activate" and "No" buttons are available
    Click Yes Activate
    Activate Auditor Successfully