*** Settings ***
Library                 Selenium2Library
Resource                ../../Resources/resource.robot
Resource                ../../Resources/login.robot
Resource                ../../Resources/res-admin-department.robot
Suite Setup             Open Browser to Manage Menu
#Suite Teardown          Close Browser

*** Test Cases ***
Go to Departments Page
    Go to Departments Page


Verify Block Department Successfully
    Search Department to Blocked
    Search Result
    Click Block Icon
    Verify "Block" icon can be clicked
    Verify Confirmation Popup "Block" is displayed properly
    Click Yes Block
    Block Department Successfully
    Delay

Verify Activate Department Successfully
    Click Inactive Tab
    Verify Inactive Department list is displayed correctly
    Search Department to Activate
    Search Result
    Click Activate Icon
    Verify "Activate" icon can be clicked
    Verify Confirmation Popup "Activate" is displayed properly
    Verify "Yes, Activate" and "No" buttons are available
    Click Yes Activate
    Activate Department Successfully




*** Keywords ***
#Active Tab -Block Department
Search Department to Blocked
        Wait Until Element is Enabled               ${field_search_department}                  ${Delay}
        Input Text                                  ${field_search_department}                  ${dept_to_delete}
Click Block Icon
        Wait Until Element is Enabled               ${button_delete_dept}                       ${Delay}
        Click Element                               ${button_delete_dept}
Click Yes Block
        Wait Until Element is Enabled               ${button_yes_delete}                        ${Delay}
        Click Element                               ${button_yes_delete}
Click No Block
        Wait Until Element is Enabled               ${button_no_delete}                         ${Delay}
        Click Element                               ${button_no_delete}
Block Department Successfully
        Wait Until Page Contains                    ${success_block_toast}                       ${Delay}
        Page Should Contain                         ${success_block_toast}

#Block Department - Templates
Verify "Block" icon can be clicked
        Wait Until Element is Enabled               ${button_yes_delete}                        ${Delay}
        Element Should Be Enabled                   ${button_yes_delete}

Verify Confirmation Popup "Block" is displayed properly
        Wait Until ELement is Enabled               ${button_yes_delete}                        ${Delay}
        Page Should Contain                         Are you sure you want to block this department?
        Page Should Contain                         Department Includes
        Page Should Contain Element                 ${button_yes_delete}
        Page Should Contain Element                 ${button_no_delete}

Verify "Yes, Block" and "No" buttons are available
        Page Should Contain Element                 ${button_yes_delete}
        Page Should Contain Element                 ${button_no_delete}

#Verify blocked department will be on the "Inactive" tab
#Verify proper error message displayed when blocking department is unsuccessful

Verify Block Department Successfully
    Search Department to Blocked
    Search Result
    Click Block Icon
    Verify "Block" icon can be clicked
    Verify Confirmation Popup "Block" is displayed properly
    Click Yes Block
    Block Department Successfully





#Verify Department -> Inactive Tab
Verify Inactive Department list is displayed correctly
    Wait Until ELement is Enabled               ${btn_asc_key}                              ${Delay}
    Page Should Contain Element                 ${btn_asc_key}
    Page Should Contain Element                 ${btn_asc_name_dept}
    Page Should Contain Element                 ${btn_asc_descript_dept}
    Page Should Contain Element                 ${btn_asc_email_dept}
    Page Should Contain Element                 ${button_activate}

#Inactive Tab - Activate
Click Inactive Tab
        Wait Until Element is Enabled               ${tab_inactive}                             ${Delay}
        Click Element                               ${tab_inactive}
Search Department to Activate
        Wait Until Element is Enabled               ${field_search_department}                  ${Delay}
        Input Text                                  ${field_search_department}                  ${dept_to_activate}
        Sleep                                       5
Click Activate Icon
        Wait Until Element is Enabled               ${button_activate}                          ${Delay}
        Click Element                               ${button_activate}
Click Yes Activate
        Wait Until Element is Enabled               ${button_yes_activate}                      ${Delay}
        Click Element                               ${button_yes_activate}

Click No Activate
        Wait Until Element is Enabled               ${button_no_activate}                       ${Delay}
        Click Element                               ${button_no_activate}

#Activate - Templates
Verify "Activate" icon can be clicked
    Wait Until Element is Enabled               ${button_yes_activate}                          ${Delay}
    Element Should Be Enabled                   ${button_yes_activate}
Verify Confirmation Popup "Activate" is displayed properly
    Wait Until Element is Enabled               ${button_yes_activate}                          ${Delay}
    Page Should Contain                         Are you sure want you to activate this department?
    Page Should Contain Element                 ${button_yes_activate}
    Page Should Contain Element                 ${button_no_activate}
Verify "Yes, Activate" and "No" buttons are available
    Page Should Contain Element                 ${button_yes_activate}
    Page Should Contain Element                 ${button_no_activate}
Activate Department Successfully
    Wait Until Page Contains                    ${success_activate_toast}                       ${Delay}
    Page Should Contain                         ${success_activate_toast}
#Verify proper error message displayed when activating department is unsuccessful

Verify Activate Department Successfully
    Click Inactive Tab
    Verify Inactive Department list is displayed correctly
    Search Department to Activate
    Search Result
    Click Activate Icon
    Verify "Activate" icon can be clicked
    Verify Confirmation Popup "Activate" is displayed properly
    Verify "Yes, Activate" and "No" buttons are available
    Click Yes Activate
    Activate Department Successfully